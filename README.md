# Backup Script

O repositório se trata de um script para fazer backup de um ou mais subdiretórios utilizando rsync. O usuario pode definir quais subdiretórios quer fazer backup e adicionar uma (e somente uma por enquanto) flag do programa rsync. 

Além disso, o programa verifica se o diretório escolhido realmente é um subdiretório do cwd atual, e caso não seja ele retorna isso para o usuário.

Por padrão o backup vai ser feito no diretório /media/saulo/saulo mas pode ser trocado no código.


