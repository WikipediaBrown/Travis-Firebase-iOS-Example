var FirebaseServer = require('firebase-server');

new FirebaseServer(5000, 'test.firebase.localhost', {this:'that'});
console.log('working 2')
