extension EmailExtractor on String {

 String extractEmailAndCapitalize() {
   final splittedString = split('@');
   return splittedString[0][0].toUpperCase();
 }
}