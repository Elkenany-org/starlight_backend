<script>
    $(function() {
        $('.mini-editor').each(function(e) {
            CKEDITOR.replace(this.id, {
                // Define the toolbar groups as it is a more accessible solution.
                toolbarGroups: [
                    {
                        "name": "basicstyles"
                        , "groups": ['basicstyles']
                    }
                    ,{
                        "name": "styles"
                        , "groups": ["styles"]
                    }
                    , {
                        "name": 'colors'
                        , "groups": ['TextColor', 'BGColor']
                    }
                    , {
                        "name": 'paragraph'
                        , "groups": ['list']
                    }, 
                 ], 
                // Remove the redundant buttons from toolbar groups defined above.
                removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar,PasteFromWord'
            });
        });

        $('.full-editor').each(function(e) {
            CKEDITOR.replace(this.id, {
                // removePlugins: 'image',
                // Define the toolbar groups as it is a more accessible solution.
                toolbarGroups: [
                        { name: 'document', groups: [ 'mode' ] },
                        // { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
                        // { name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ] },
                        // { name: 'forms' },
                        '/',
                        { name: 'basicstyles', groups: [ 'basicstyles'] },
                        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align' ] },
                        // { name: 'links' },
                        { name: 'insert' },
                        '/',
                        { name: 'styles' },
                        { name: 'colors' },
                        { name: 'tools' },
                        // { name: 'others' },
                        // { name: 'about' }
                    ],
                // Remove the redundant buttons from toolbar groups defined above.
                removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar,PasteFromWord'
            });
        });
    });
</script>