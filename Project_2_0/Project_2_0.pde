
String[] countries;
String[] capitals;
int[] population;
int[] area;
String[] language;
String[] currency;
void setup()
{
  size (1500, 1500);
  fill(0);
  textAlign(LEFT);
  String[] textLines =loadStrings("countries.txt");
  countries = new String[textLines.length];
  capitals= new String[textLines.length];
  population= new int[textLines.length];
  area= new int[textLines.length];
  language= new String[textLines.length];
  currency= new String[textLines.length];

  for (int i=0; i<textLines.length; i++)
  {
    String[] parts= split(textLines[i], ',');
    
    countries[i]= parts[1];
    capitals[i]=parts[2];
    population[i]= int(parts[3]);
    
    
    println(parts.length);
  }
}

void draw()
{
  background(255);
  float yPos= 2;
  for (int i=1; i<=44; i=i+1)
  {
    yPos=yPos+15;
    fill(0);
    text(countries[i], 5, yPos);
    text(capitals[i], 150, yPos);
    text(population[i], 290, yPos);
    println(mouseX);
  }
}
