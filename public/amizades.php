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

        
        $leitor1 = 'leitor1';
        $leitor2 = 'leitor2';
      

        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =

            ' SELECT lt1.nome leitor1, lt2.nome leitor2' .
            ' FROM amizades' .
            ' JOIN leitor AS lt1 on lt1.leitor_id = amizades.leitor1 ' .
            ' JOIN leitor AS lt2 on lt2.leitor_id = amizades.leitor2' ;




            /*TODO-2: Adicione cada variavel a consulta abaixo */



        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }



        $cabecalho =
            '<table>' .
            '    <tr>' .
            '        <th>' . $leitor1 . '</th>' .
            '        <th>' . $leitor2 . '</th>' .
            '    </tr>';
                /* TODO-3: Adicione as variaveis ao cabeçalho da tabela */


         echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';
                /* TODO-4: Adicione a tabela os novos registros. */
                echo '<td>' . $registro[$leitor1] . '</td>' .
                     '<td>' . $registro[$leitor2] . '</td>' ;

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