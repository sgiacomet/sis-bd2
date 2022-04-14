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

        <h2>Leituras</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

        
        $leitor = 'leitor';
        $livro = 'livro';


        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $leitor .
            '     , ' . $livro .

            /*TODO-2: Adicione cada variavel a consulta abaixo */
            '  FROM leituras';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }



        $cabecalho =
            '<table>' .
            '    <tr>' .
            '        <th>' . $leitor . '</th>' .
            '        <th>' . $livro . '</th>' .
            '    </tr>';
                /* TODO-3: Adicione as variaveis ao cabeçalho da tabela */


         echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';
                /* TODO-4: Adicione a tabela os novos registros. */
                echo '<td>' . $registro[$leitor] . '</td>' .
                     '<td>' . $registro[$livro] . '</td>' ;

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