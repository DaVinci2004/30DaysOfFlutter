#include<iostream>
using namespace std;
int main()
{
	int t,n,x,mx,s,i,k;
	cin>>t;
	while(t--)
	{
		cin>>n;
		s=0,mx=0;
		for(i=1;i<=n;i++)
		{
			cin>>x;
			s+=x;
			if(s>mx) 
            {
                mx=s;
            }
        }
		cout<<mx<<"\n";
	}
}