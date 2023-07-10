#include<iostream>
using namespace std;
int main()
{
	int n,c,p[n-1],a,b,pr=0;
	cin>>n;
	for (int i = 0; i <=(n-2); i++)
	{
		cin>>c;
		p[i]=c;
	}
	
	cin>>a>>b;
    if (a==b)
    {
        cout<<0;
    }
    
	else if ((b-a)<=(n-1)){
	for (int j = 0; j < (b-a); j++)
	{
		pr=pr+p[j];
	}
	cout<<pr;
	
	}
	return 0;
    
	
}