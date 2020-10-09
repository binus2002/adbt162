String[] countries;
String[] capitals;
int[] population;
int[] area;
String[] currency;
void setup()
{
  size (1500, 750);
  fill(0);
  textAlign(LEFT);
  textSize(12);
  String[] textLines =loadStrings("countries.txt");
  countries = new String[textLines.length];
  capitals= new String[textLines.length];
  population= new int[textLines.length];
  area= new int[textLines.length];
  currency= new String[textLines.length];

  for (int i=0; i<textLines.length; i++)
  {
    String[] parts= split(textLines[i], ',');

    countries[i]= parts[1];
    capitals[i]=parts[2];
    population[i]= int(parts[3]);
    area[i]=int(parts[4]);
    currency[i]=parts[5];
    
  }
}

void draw()
{
  println(mouseX);
  background(255);
  float yPos= 2;
  yPos=yPos+15;
  fill(#0B860C);
  text("a=Area(km^2)/2000 Bar chart. where width of 1 pixel=2000km^2",2,700);
  fill(255,0,0);
  text("p=Population/200,000 Bar Chart. where width of 1 pixel",2,715);
  
  
  
  for (int i=1; i<=44; i=i+1)
  {
    yPos=yPos+15;
    fill(0);
    text(countries[i], 5, yPos);
    text(capitals[i], 150, yPos);
    text(population[i], 260, yPos);
    text(area[i], 370, yPos);
    text(currency[i], 450, yPos);
    if (keyPressed==true)
    {
      if (key=='p')
      {
        fill(255, 0, 0);
        rect(610, yPos-12, population[i]/200000, 12);
      }
      if (key=='a')
      {
        fill(0, 255, 0);
        rect(610, yPos-12, area[i]/2000, 12);
      }
    }
  }
}
