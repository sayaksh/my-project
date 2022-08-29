import 'package:firebase_database/firebase_database.dart';

DatabaseReference starCountRef = FirebaseDatabase.instance
    .ref('https://kanglei-tourist-home-default-rtdb.firebaseio.com/district');
        


// starCountRef.onValue.listen((DatabaseEvent event) {
//     final data = event.snapshot.value;
//     updateStarCount(data);
// });