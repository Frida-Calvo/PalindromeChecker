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
  String sNew = new String();
    //check for capitals
  String lowerC = noCapitals(word);
    //check for spaces 
  String together = noSpaces(lowerC);
    //check for non letter types
  String let = onlyLetters(together);

  if(let.equals(reverse(let)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();

    for(int u = str.length()-1; u>=0; u--)
      sNew = sNew + str.substring(u,u+1);
    return sNew;
}

public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}

public String noSpaces(String sWord){
  String p = "";
  for(int i = 0; i<sWord.length(); i++){  
    if(!sWord.substring(i,i+1).equals(" "))
      p = p + sWord.substring(i,i+1);    
  }
  return p;
}

public String onlyLetters(String sString){
  String all = "";
  for(int h = 0; h<= sString.length()-1; h++){
    if(Character.isLetter(sString.charAt(h)))
      all = all + sString.substring(h,h+1);
  }
  return all;
}


