String[] countries;
String[] capitals;
int[] population;
int[] area;
String[] currency;
int[]urban;

void setup()
{
  size (1700, 750);
  fill(0);
  textAlign(LEFT);
  textSize(12);
  String[] textLines =loadStrings("countries.txt");
  countries = new String[textLines.length];
  capitals= new String[textLines.length];
  population= new int[textLines.length];
  area= new int[textLines.length];
  currency= new String[textLines.length];
  urban= new int[textLines.length];
  for (int i=0; i<textLines.length; i++)
  {
    String[] parts= split(textLines[i], ',');
    countries[i]= parts[1];
    capitals[i]=parts[2];
    population[i]= int(parts[3]);
    area[i]=int(parts[4]);
    currency[i]=parts[5];
    urban[i]=int(parts[6]);
  }
}

void draw()
{
  background(255);
  float yPos= 17;
  fill(#0B860C);
  text("a=Area(km^2)/2000 Bar chart. where width of 1 pixel=2000km^2", 2, 700);
  fill(255, 0, 0);
  text("p=Population/200,000 Bar Chart. where width of 1 pixel=200,000", 2, 715);
  fill(0, 0, 255);
  text("d= Population density per km^2", 2, 730);
  fill(0, 80, 99);
  text("Name", 5, 17);
  text("Capital", 150, 17);
  text("Population", 260, 17);
  text("Area", 370, 17);
  text("Currency", 450, 17);
  text("Urban%", 610, 17);
  for (int i=1; i<countries.length; i=i+1)
  {
    yPos=yPos+15;
    fill(0);
    text(countries[i], 5, yPos);
    text(capitals[i], 150, yPos);
    text(population[i], 260, yPos);
    text(area[i], 370, yPos);
    text(currency[i], 450, yPos);
    text(urban[i], 610, yPos);
    
    if (key=='d')
    {     
      int popdensity=0;
      popdensity=population[i]/area[i];
      fill(55, 78, 215);
      rect(640, yPos-12, popdensity, 12);
      fill(0, 0, 0);
      text(popdensity, 650, yPos);
    }
     
    if (key=='a')
    {
      fill(0, 255, 0);
      rect(640, yPos-12, area[i]/700, 12);
      int areaTotal=0;
      for (int y : area)
      {
        areaTotal=areaTotal+y;
        fill(0);
      }
      text("Total Area=", 600, 700);
      text(areaTotal, 670, 700);
    } 
     
    if (key=='p')
     {
      fill(255, 0, 0);
      rect(640, yPos-12, population[i]/200000, 12);
      int populationTotal=0;
      for (int x : population)
      {
        populationTotal=populationTotal+x;
        fill(0);
        text("Total Population=", 600, 700);
      }
      text(populationTotal, 705, 700);
    }
      
  }
}
