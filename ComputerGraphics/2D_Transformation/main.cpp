#include <iostream>
#include <conio.h>
#include <graphics.h>
using namespace std;
struct point
{
    float x,y;
};

class matrix
{
    private:
    	int c = 400;
	    point *p;
        point t[2];
        point p1[1];
        int points;

    public:
    	void axis()
		{
		    setcolor(WHITE);
		    line(c,0,c,c*2);
		    line(0,c,c*2,c);
		}
    	void plot()
        {
            for(int i=0;i<points;i++)
                line(c+p[i].x, c-p[i].y, c+p[(i+1)%points].x, c-p[(i+1)%points].y);
        }

        void mat()
        {
            cout<<endl;
            for(int i=0;i<points;i++)
            cout<<p[i].x<<" "<<p[i].y<<endl;
        }
        void read()
        {
            cout<<"Enter no. of points :"<<endl;
            cin>>points;
            p=new point[points];
            cout<<"Enter value between 0 and 400"<<endl;
            cout<<"Enter coordinates:"<<endl;
            for(int i=0;i<points;i++)
            {
                cout<<"Enter P"<<i+1<<" : "<<endl;
                cin>>p[i].x>>p[i].y;
            }
            setcolor(RED);
            mat();
            plot();
        }

        void trans_mat()
        {
            cout<<"Enter Transformation matrix (in 2X2):"<<endl;
            for(int i=0;i<2;i++)
            cin>>t[i].x>>t[i].y;
        }

        void transform()
        {
            for(int i=0;i<points;i++)
            {
                p1[0].x = p[i].x*t[0].x + p[i].y*t[1].x;
                p1[0].y = p[i].x*t[0].y + p[i].y*t[1].y;

                p[i].x = (int)(p1[0].x);
                p[i].y = (int)(p1[0].y);
            }
            setcolor(BLUE);
            mat();
    		plot();
        }   
};

int main()
{
    initwindow(800,800);
    
    matrix m;
    m.axis();
    m.read();
    m.trans_mat();
    m.transform();
    getch();
    return 0;
}

