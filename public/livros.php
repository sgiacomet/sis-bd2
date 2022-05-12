<!DOCTYPE html>

<head>
    <style>
        .content {
            max-width: 500px;
            margin: auto;
        }
    </style>
</head>

<html>

<body>
    <div class="content">
        <h1>Bibliófilo's</h1>

        <h2>Livros</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

       
        $titulo = 'titulo';
        $genero = 'genero';
        $editora = 'editora';
        $autor = 'autor_id';
        $classificacao = 'classificacao';
        $formato = 'formato'; 

        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
        ' SELECT livro.titulo, autor.nome autor_id, livro.genero, livro.editora, livro.classificacao, livro.formato'.
        ' FROM livro' .
        ' JOIN autor on autor.autor_id = livro.autor_id' ;



        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }



        $cabecalho =
            '<table>' .
            '    <tr>' .
            '        <th>' . 'TITULO' . '</th>' .
            '        <th>' . 'AUTOR' . '</th>' .
            '        <th>' . 'GENERO' . '</th>' .
            '        <th>' . 'EDITORA' . '</th>' .
            '        <th>' . 'CLASSIFICAÇÃO' . '</th>' .
            '        <th>' . 'FORMATO'. '</th>' .
            '    </tr>';
                /* TODO-3: Adicione as variaveis ao cabeçalho da tabela */

        echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';
                /* TODO-4: Adicione a tabela os novos registros. */
                echo '<td>' . $registro[$titulo] . '</td>' . 
                     '<td>' . $registro[$autor] . '</td>'.           
                     '<td>' . $registro[$genero] . '</td>'.
                     '<td>' . $registro[$editora] . '</td>'.
                     '<td>' . $registro[$classificacao] . '</td>'.
                     '<td>' . $registro[$formato] . '</td>' ;

                echo '</tr>';
            }
            echo '</table>';
        } else {
            echo '';
        }
        FecharConexao($conexao);
        ?>
    </div>
</body>

</html>