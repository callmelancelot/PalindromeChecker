public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String x = "";
  word = onlyLetters(word);
  word = noCapitals(word);
  word = noSpaces(word);
  for(int i = word.length()-1 ; i>=0 ; i--){
    x = x + word.substring(i,i+1);
  }
  if(x.equals(word)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
    sNew = sNew + str.charAt(i);
    }
    return sNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String x = "";
  for(int i = 0; i<sWord.length();i++){
    if(sWord.charAt(i)!=' '){
      x = x + sWord.substring(i,i+1);
    }
  }
  return x;
}

public int numLetters(String sString){
  int x = 0;
  for(int i = 0; i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      x++;
    }
  }
  return x;
}

public String onlyLetters(String sString){
  String x = "";
  for(int i = 0; i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      x = x + sString.substring(i,i+1);
    }
  }
  return x;
}
