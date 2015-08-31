		int position;
		int r;
		float randColor=random(255);
		int changeColor=0;
		boolean spiral = true;
		int randNum;
		int count = 0;
		int transparency=255; 

		void setup()
		{
			size(800,800);
			background (0,100);
			frameRate(100);
			position=0;
			r=0;
		}
		
		void draw()
		{		
				
				randNum = (int)(Math.random()*255);
				if(count == 1){
					fill(randNum+changeColor,changeColor,0, transparency);
				}
				else if(count == 2){
				fill(changeColor,randNum+changeColor,0, transparency);
				}
				else if(count == 3){
					fill(0,randNum+changeColor, changeColor, transparency);
				}
				else if(count == 4){
					fill(randNum+changeColor,0, changeColor, transparency);
				}
				else if(count == 5){
					fill(0,changeColor,randNum+changeColor, transparency);
				}
				else if(count == 6){
					fill(changeColor,0,randNum+changeColor, transparency);
				}
				println(randNum);
				spiralFunction();	
				

		}

		void mousePressed(){
				resetMatrix();
		 		fill(0,150);
		 		rect(0,0, width,height);
		 		position = 0;
		 		changeColor = 0;
		 		count=(int)(Math.random()*6)+1;
		 		transparency = 255;
		}
		void spiralFunction(){
			
			noStroke();
			translate(width/2,height/2);
			rotate(r);
			ellipse(position, position, 10,10);
			position++;
			r--;
			changeColor++;
			transparency--;
		
		}


		void spiralReverse(){
			noStroke();
			fill(random(255)+changeColor,changeColor,0);
			translate(width/2,height/2);
			rotate(-r);
			ellipse(position, position, 10,10);
			position++;
			r++;
			changeColor++;
		}
