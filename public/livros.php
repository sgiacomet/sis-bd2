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

        $item = 'livro_id';
        $titulo = 'titulo';
        $autor = 'autor';
        $genero = 'genero';
        $editora = 'editora';
        $classificacao = 'classificacao';


        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $item .
            '     , ' . $titulo .
            '     , ' . $autor .
            '     , ' . $genero .            
            '     , ' . $editora .
            '     , ' . $classificacao .
            /*TODO-2: Adicione cada variavel a consulta abaixo */
            '  FROM livros';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }



        $cabecalho =
            '<table>' .
            '    <tr>' .
            '        <th>' . 'item' . '</th>' .
            '        <th>' . $titulo . '</th>' .
            '        <th>' . $autor . '</th>' .
            '        <th>' . $genero . '</th>' .
            '        <th>' . $editora . '</th>' .
            '        <th>' . $classificacao . '</th>' .
            '    </tr>';
                /* TODO-3: Adicione as variaveis ao cabeçalho da tabela */

        echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';
                /* TODO-4: Adicione a tabela os novos registros. */
                echo '<td>' . $registro[$item] . '</td>' .
                     '<td>' . $registro[$titulo] . '</td>' .                
                    '<td>' . $registro[$autor] . '</td>' .
                    '<td>' . $registro[$genero] . '</td>'.
                    '<td>' . $registro[$editora] . '</td>' .
                    '<td>' . $registro[$classificacao] . '</td>';

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