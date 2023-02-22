import warnings
warnings.filterwarnings("ignore", category=FutureWarning)
from flask import abort, render_template, Flask
import logging
import db

## Extra imports
import random

APP = Flask(__name__)


# Start page
@APP.route('/')
def index():
    stats={}
    x = db.execute('SELECT COUNT(*) AS vinhos FROM VINHO').fetchone()
    stats.update(x)
    x = db.execute('SELECT COUNT(*) AS produtores FROM PRODUTOR').fetchone()
    stats.update(x)
    x = db.execute('SELECT COUNT(*) AS regioes FROM REGIAO').fetchone()
    stats.update(x)
    logging.info(stats)
    #create a random number that belongs to IdVinho
    random_number = random.randint(1, 1000)
    while (db.execute(
        '''
        SELECT IdVinho
        FROM VINHO
        WHERE IdVinho = %s
        ''', random_number).fetchone() is None):

            random_number = random.randint(1, 1000)
    return render_template('index1.html', stats=stats, n=random_number)



# obter nome de atributos das tabelas 
def getFields(table):
    values = {}
    res = db.execute('describe ' + table)
    values = res.fetchall()
    return values


@APP.route('/tables/<table>')   #apresentar os atributos das tabelas
def table(table):
    fields = {}
    fields = getFields(table)
    obj = fields[0]
    keys = list(obj.keys())
    return render_template('table.html', table=table, fields=fields, keys=keys)

def getDados(table):
    values = {}
    res = db.execute('select * from ' + table)
    values = res.fetchall()
    return values

################################################################################
#                   /table/
@APP.route('/<table>/')   
def list_table(table):
    if table == 'VINHO':
        vinhos = db.execute(
        '''
        SELECT IdVinho, Nome, Ano, Etiqueta, PrecoMin, PrecoMax, PercAlcool, Casta
        FROM VINHO
        Order by Nome
        ''').fetchall()
        obj = vinhos[0]
        keys = list(obj.keys())
        return render_template('vinho-list.html',table=table, vinhos=vinhos, keys = keys)

    elif table == 'REGIAO':
        regioes = db.execute(
        '''
        SELECT IdRegiao, Nome
        FROM REGIAO
        Order by IdRegiao
        ''').fetchall()

        return render_template('regiao-list.html',regioes=regioes)


    elif table == 'PRODUTOR':
        produtores = db.execute(
        '''
        SELECT IdProdutor, Nome
        FROM PRODUTOR
        Order by IdProdutor
        ''').fetchall()
        obj = produtores[0]
        keys = list(obj.keys())
        return render_template('produtor-list.html',table=table, produtores=produtores, keys = keys)

    elif table == 'NOMELOJA':
        lojas = db.execute(
        '''
        SELECT IdCompra, NomeLoja
        FROM NOMELOJA
        Order by IdCompra
        ''').fetchall()

        return render_template('nomeloja-list.html',lojas=lojas)

    elif table == 'TIPO':
        tipos = db.execute(
        '''
        SELECT IdTipo, NomeTipo
        FROM TIPO
        Order by IdTipo
        ''').fetchall()
        return render_template('tipo-list.html',tipos=tipos)
    
    elif table == 'CLASSIFICACAO':
        classificacoes = db.execute(
        '''
        SELECT IdClass, NomeRevisores, Classificacao, NotaAdicional
        FROM CLASSIFICACAO
        Order by Classificacao DESC
        ''').fetchall()

        return render_template('classificacao-list.html',table=table, classificacoes=classificacoes)


    elif table == 'VENDIDO':
        vendidos = db.execute(
        '''
        SELECT IdVinho, IdCompra
        FROM VENDIDO NATURAL JOIN VINHO NATURAL JOIN NOMELOJA
        Order by IdVinho
        ''').fetchall()
        return render_template('vendido-list.html',vendidos=vendidos)
    
 
    else:
        dados = {}
        dados = getDados(table)
        obj = dados[0]
        keys = list(obj.keys())
        return render_template('data.html', table=table, fields=dados, keys=keys)




#####################################   SEARCH   #########################################################

# Funcionalidades, pesquisar pelo nome do vinho
#     /VINHO/search/expr
@APP.route('/VINHO/search/<expr>/')
def search_movie(expr):
  search = { 'expr': expr }
  expr = '%' + expr + '%'
  vinhos = db.execute(
      ''' 
      SELECT IdVinho, Nome
      FROM VINHO 
      WHERE Nome LIKE %s
      ''', expr).fetchall()
  return render_template('vinho-search.html',search=search,vinhos=vinhos)



# Funcionalidades, pesquisar pelo produtor do vinho

@APP.route('/PRODUTOR/search/<expr>/')
def search_produtor(expr):
    search = { 'expr': expr }
    expr = '%' + expr + '%'
    produtores = db.execute(
        ''' 
        SELECT IdProdutor, Nome
        FROM PRODUTOR 
        WHERE Nome LIKE %s
        ''', expr).fetchall()
    return render_template('produtor-search.html',search=search,produtores=produtores)





################################### Ligação da tabela VINHO com NOMELOJA por meio da VENDIDO    #########################################################
#   /NOMELOJA/id
@APP.route('/NOMELOJA/<int:Id>/')
def get_loja(Id):
    loja = db.execute(
        '''
        SELECT IdCompra, NomeLoja
        FROM NOMELOJA
        WHERE IdCompra = %s
        ''', Id).fetchone()
    
    if loja is None:
         abort(404, 'Loja id {} does not exist.'.format(id))
    
    vinhos = db.execute(
        '''
        SELECT IdVinho, Nome
        FROM VINHO NATURAL JOIN VENDIDO natural join NOMELOJA
        WHERE VENDIDO.IdCompra = %s 
        ''', Id).fetchall()
    

    
    return render_template('nomeloja.html', loja=loja,vinhos=vinhos)



#################################### Ligação da tabela VINHO com REGIAO com TIPO (Junção de informação envolvendo 3 tabelas)  ##########################################################
# Funcionalidades, escolher um id de uma regiao e um id para o tipo
#relacao 3 tabelas

@APP.route('/REGIAO/<int:Id_l>/<int:Id_t>/')
def get_regiao_tipo(Id_l,Id_t):
    vinhos=db.execute(
        '''
        SELECT VINHO.IdVinho AS IdVinho, VINHO.Nome as Nome
        FROM VINHO join REGIAO on VINHO.IdRegiao = REGIAO.IdRegiao join TIPO on VINHO.IdTipo = TIPO.IdTipo
        WHERE REGIAO.IdRegiao = %s AND TIPO.IdTipo = %s
        ''' % (Id_l,Id_t)).fetchall()

    if vinhos is None:
         abort(404, 'Verifique os Ids inseridos')


    regiao=db.execute(
        '''
        SELECT IdRegiao, Nome
        FROM REGIAO
        WHERE IdRegiao = %s
        ''', Id_l).fetchone()

    if regiao is None:
         abort(404, 'Verifique os Ids inseridos')

    tipo=db.execute(
        '''
        SELECT NomeTipo
        FROM TIPO
        WHERE IdTipo = %s
        ''', Id_t).fetchone()
    
    if tipo is None:
            abort(404, 'Verifique os Ids inseridos')

    return render_template('regiao-filtered.html', vinhos=vinhos, regiao=regiao, tipo=tipo )


##############################################################################################
#  /TIPO/id
@APP.route('/TIPO/<int:Id>/')
def get_tipo(Id):
    tipo = db.execute(
        '''
        SELECT IdTipo, NomeTipo
        FROM TIPO
        WHERE IdTipo = %s
        ''', Id).fetchone()
    
    if tipo is None:
         abort(404, 'Tipo id {} does not exist.'.format(id))
    
    vinhos = db.execute(
        '''
        SELECT IdVinho, Nome
        FROM VINHO
        WHERE IdTipo = %s 
        ''', Id).fetchall()


    return render_template('tipo.html', tipo=tipo,vinhos=vinhos)

##############################################################################################
#   /REGIAO/id
@APP.route('/REGIAO/<int:Id>/')
def get_regiao(Id):
    regiao = db.execute(
        '''
        SELECT IdRegiao, Nome
        FROM REGIAO
        WHERE IdRegiao = %s
        ''', Id).fetchone()
    
    if regiao is None:
         abort(404, 'Regiao id {} does not exist.'.format(id))
    
    vinhos = db.execute(
        '''
        SELECT IdVinho, Nome
        FROM VINHO
        WHERE IdRegiao = %s 
        ''', Id).fetchall()
    

    
    return render_template('regiao.html', regiao=regiao,vinhos=vinhos)

##############################################################################################
#   /PRODUTOR/id
@APP.route('/PRODUTOR/<int:Id>/')
def get_produtor(Id):
    produtor = db.execute(
        '''
        SELECT IdProdutor, Nome
        FROM PRODUTOR
        WHERE IdProdutor = %s
        ''', Id).fetchone()
    
    if produtor is None:
         abort(404, 'Produtor id {} does not exist.'.format(id))
    
    vinhos = db.execute(
        '''
        SELECT IdVinho, Nome
        FROM VINHO
        WHERE IdProdutor = %s 
        ''', Id).fetchall()
    

    
    return render_template('produtor.html', produtor=produtor,vinhos=vinhos)

##############################################################################################
#   /CLASSIFICACAO/id
@APP.route('/CLASSIFICACAO/<int:Id>/')
def get_classificacao(Id):
    classificacao = db.execute(
        '''
        SELECT IdClass, NomeRevisores, Classificacao as Nota, NotaAdicional
        FROM CLASSIFICACAO
        WHERE IdClass = %s
        ''', Id).fetchone()
    
    if classificacao is None:
         abort(404, 'Classificacao id {} does not exist.'.format(id))
    
    vinho = db.execute(
        '''
        SELECT IdVinho as IdVinho, Nome
        FROM CLASSIFICACAO NATURAL JOIN VINHO
        WHERE VINHO.IdClass = %s 
        ''', Id).fetchall()
    

    
    return render_template('classificacao.html', classificacao=classificacao,vinho=vinho)


##############################################################################################
#   /VINHO/id
@APP.route('/VINHO/<int:IdVinho>/')
def get_vinho(IdVinho):
  vinho = db.execute(
      '''
      SELECT IdVinho, Nome, Ano, Etiqueta, PrecoMin, PrecoMax, PercAlcool, Casta, LinkBlog
      FROM VINHO
      WHERE IdVinho = %s
      ''', IdVinho).fetchone()

  if vinho is None:
     abort(404, 'Vinho id {} does not exist.'.format(id))

  tipo = db.execute(
      '''
      SELECT IdTipo, NomeTipo 
      FROM VINHO NATURAL JOIN TIPO 
      WHERE IdVinho = %s 
      ORDER BY NomeTipo
      ''', IdVinho).fetchall()

  regiao = db.execute(
      '''
      SELECT VINHO.IdRegiao,REGIAO.Nome 
      from VINHO 
      inner join REGIAO on VINHO.IdRegiao=REGIAO.IdRegiao 
      where VINHO.IdVinho=%s;
      ''', IdVinho).fetchall()

  produtor = db.execute(
      '''
      SELECT VINHO.IdProdutor, PRODUTOR.Nome
      FROM VINHO
      inner join PRODUTOR on VINHO.IdProdutor=PRODUTOR.IdProdutor
      WHERE VINHO.IdVinho = %s 
      ''', IdVinho).fetchall()
    
  classificacao = db.execute(
      '''
      SELECT IdClass, Classificacao
      FROM VINHO NATURAL JOIN CLASSIFICACAO
      WHERE IdClass = %s 
      ''', IdVinho).fetchall()

  lojas = db.execute(
        '''
        SELECT IdCompra, NOMELOJA.NomeLoja AS Loja
        FROM VINHO NATURAL JOIN VENDIDO natural join NOMELOJA
        WHERE IdVinho = %s
        ''', IdVinho).fetchall()
    

  return render_template('vinho.html', vinho=vinho, tipo=tipo, regiao=regiao, produtor=produtor, classificacao=classificacao, loja=lojas)



