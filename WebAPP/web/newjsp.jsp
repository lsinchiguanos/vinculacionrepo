<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Validar Cedula</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet"/>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
    </head>
    <body>
        <script>
            function buscador_en_select() {
                wp_enqueue_style('estilos-select', 'https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css', array(), '1.0');
                wp_enqueue_script('jquery');
                wp_enqueue_script('script-select', 'https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js', array('jquery'), '1.0');
                wp_enqueue_script('mi-script', get_template_directory_uri().'/js/mi-script.js', array('script-select'), '1.0');
            }
            add_action('wp_enqueue_scripts', 'buscador_en_select');
            jQuery(document).ready(function ($) {
                $(document).ready(function () {
                    $('.mi-selector').select2();
                });
            });
        </script>
        <select class='mi-selector1' name='marcas1'>
            <option value=''>Seleccionar una marca</option>
            <option value='audi'>Audi</option>
            <option value='bmw'>BMW</option>
            <option value='citroen'>Citroen</option>
            <option value='fiat'>Fiat</option>
            <option value='ford'>Ford</option>
            <option value='honda'>Honda</option>
            <option value='hyundai'>Hyundai</option>
            <option value='kia'>Kia</option>
            <option value='mazda'>Mazda</option>
        </select>
    </body>
</html>
