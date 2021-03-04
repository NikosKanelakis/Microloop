ΔΠΜΣ "Τέχνες και Τεχνολογίες του Ήχου"
Μουσική Πληροφορική 

Τελική εργασία 


Τίτλος: Microloop


Διάρκεια: ~ 4':30"


Τύπος: Stereo fixed media
_______________________

Στόχος αυτής της εργασίας ήταν η κατανόηση και βασική χρήση του Supercollider ως εργαλείο σύνθεσης. 

Η αρχική μου ιδέα ήταν η δημιουργία ενός τεχνικού εργαλείου ηχητικής επεξεργασίας, στο οποίο θα εισάγονται ηχητικά δείγματα, θα επεξεργάζονται μέσα απο μια 
διαδικασία τροποποίησης τους σε επίπεδα τονικού ύψους, διάρκειας και ηχοχρώματος και τέλος θα εξάγονται ως νέα ηχητικά αντικείμενα.

Έπειτα, παρακολουθώντας μέσα απο τα μαθήματά μας τις πραγματικές δυνατότητες του μέσου, αποφάσισα 
να δημιουργήσω ένα αυτοτελές μουσικό έργο βασισμένο στην τυχαιότητα, την παλμικότητα, την επανάληψη ως δομικό στοιχείο (loop) και ηχητικά δείγματα ως βασική 
ηχητική πηγή. Και πάλι πρωταρχικός μου στόχος ήταν να μπορώ να εξηγήσω κάθε κομμάτι μέσα στον κώδικά μου, να μην υπάρχουν δηλαδή, σημεία που να μην γνωρίζω 
την λειτουργία τους. 

Η γνώση για τη χρήση του μέσου προήλθε κυρίως απο τις διαλέξεις του μαθήματος και αντίστοιχα απο την σειρά διαλέξεων του Eli Fieldsteel στο Youtube.
Ακολουθώντας το χρονοδιάγραμμα των βίντεο του Eli σε εβδομαδιαία βάση κατάφερα να φτιάξω την βασική δομή του κώδικά μου.

Χρησιμοποίησα Dictionaries για να φορτώσω σε Buffers ένα μεγάλο αριθμό ηχητικών δειγμάτων, τα οποία ήταν χωρισμένα σε κατηγορίες ανάλογα με την ηχοχρωματική τους 
ποιότητα (μεταλικοί, πλαστικοί, ξύλινοι, κεραμικοί ήχοι κλπ).
Έπειτα δημιούργησα SynthDef για φτιάξω τους ήχους των synthesizer μου και σε ένα απο αυτά τα Synthdef να φορτώσω και τα Buffer με τα ηχητικά δείγματα.
Έχοντας στα χέρια μου έναν αριθμό σπο Synthdef χρειαζόμουν ένα σημείο αναφοράς που να αναφέρει πώς θα παίζουν αυτά τα SynthDef. Η πιο απλούστερη λύση ήταν 
η δημιουργία Pattern με τη χρήση Pbind, τα οποία καλούσαν το κάθε Synthdef και τους έδιναν οδηγίες για το πως θα παίξουν. 
Για κάθε pattern δημιούργησα ένα πλέγμα και ένα μετρικό σύστημα (4/4) έτσι ώστε να παίζουν συγχρονισμένα στο προκαθορισμένο τέμπο των 128 beat per second. 
Για κάθε 4/4 τα Pbinds έπαιρναν ένα εύρος τιμών για ορισμένες λειτουργίες -κλειδιά- στο οποίο έδινα την οδηγία να διαβάζονται τυχαία (Prand,Pwrand,Pexprand,Pwhite).
Έχοντας φτιάξει 20 διαφορετικά Pbind έπρεπε να οργανώσω την παρουσία τους στον χρόνο κι αυτό ήταν ένα βασικό ερώτημα που δεν απαντούσαν τα tutorial του Eli Fieldsteel 
(μέχρι το σημείο που τα παρακολούθησα). Η απάντηση ήρθε ψάχνοντας διάφορα παραδείγματα κώδικα στην ιστοσελίδα sccode.org. 
Εκεί βρήκα ένα παράδειγμα (το επισηνάπτω στις πηγές) που έπαιζε κι αυτό pattern το ένα μετά το άλλο ή και ταυτόχρονα. 
Αυτο λειτουργούσε με τη δημιουργία ενός function με τη χρήση του fork το οποίο στην ουσία αποτέλεσε ως ένα score αναπαραγωγής των pattern. 
Τέλος έχοντας καταλήξει πλέον σε ένα μεγάλο πρότζεκτ, με πολλές γραμμές κώδικα, η ανασκόπηση και η ανάλυσή του σε συγκεκριμένα σημεία ήταν ιδιαίτερα κουραστική.
Γι' αυτόν τον λόγο, έπρεπε να χωρίσω σε τμήματα τον κώδικά μου και μια κεντρική διαχείρηση του προτζεκτ να ανατρέχει στα τμήματα αυτά, τα οποία θα ήταν γραμμένα σε 
διαφορετικά αρχεία, για την εργονομία του χώρου. Για να μπορέρω να το κάνω αυτό ανέτρεξα στα tutorial του Nick Collins για το Supercollider (τα οποία παραθέτω στις πηγές μου)
και εκεί βρήκα ακριβώς το tutorial που αναφέρει πώς μπορεί κανείς να διαχειριστεί μεγάλα πρότζεκτ στο Supercollider. 

Ως αποτέλεσμα, θεωρώ, πως η δουλειά που έκανα πάνω στο Supercollider μου έδωσε τα πρώτα εφόδια για να μπορέσω να συνεχίσω να ασχολούμαι και να το εξελίσω.
Το αντικείμενο της χρήσης των ηχητικών δειγμάτων ως πρωτογενές ηχητικό υλικό για τη δημιουργία συνθέσεων στο 
Supercollider μπορεί να αποτελέσει τη βάση για περεταίρω αναζήτηση καθώς και επέκταση του ερευνητικού πλαισίου σε τομείς όπως το "microsound"
όπως το ορίζει ο Curtis Roads.

Βασική μου αισθητική επηρροή, όσον αναφορά τη χρήση της επαναληψημότητας, ήταν το έργο του Ορέστη Καραμανλή 'Toys'(https://soundcloud.com/orestiskaramanlis/toys)
χωρίς βέβαια να έχω χρησιμοποιήσει τον κώδικά του.

Πηγές:

Eli Fieldsteel - Supercollider Tutorials στο Youtube: https://www.youtube.com/watch?v=yRzsOOiJ_p4&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC&ab_channel=EliFieldsteel
Για την χρήση του Fork και το trigger των Pattern το ένα μετά το άλλο: http://sccode.org/1-5ci
Για την διατμηματοποίηση του προτζεκτ σε επιμέρους μέρη: https://composerprogrammer.com/teaching/supercollider/sctutorial/Technicalities/07%20Dealing%20with%20Large%20Projects.html
