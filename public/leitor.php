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

        <h2>Leitores</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

        $nuser = 'leitor_id';
        $nome = 'nome';
        $username = 'username';



        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $nuser .
            '     , ' . $nome .
            '     , ' . $username .

            /*TODO-2: Adicione cada variavel a consulta abaixo */
            '  FROM leitores';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }



        $cabecalho =
            '<table>' .
            '    <tr>' .
            '        <th>' . 'Código' . '</th>' .
            '        <th>' . "Nome" . '</th>' .
            '        <th>' . "Username" . '</th>' .
            '    </tr>';
                /* TODO-3: Adicione as variaveis ao cabeçalho da tabela */


         echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';
                /* TODO-4: Adicione a tabela os novos registros. */
                echo '<td>' . $registro[$nuser] . '</td>' .
                     '<td>' . $registro[$nome] . '</td>' .                
                     '<td>' . $registro[$username] . '</td>' ;

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