var clipboard = new Clipboard('.btn');

   clipboard.on('success', function(e) {
       console.log(e);
       $('.btn').tooltip('show');
    });
   clipboard.on('error', function(e) {
       console.log(e);
});
