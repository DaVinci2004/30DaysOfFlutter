#include<iostream>
#include<string>
using namespace std;
int main()
{
	string s;
	bool n=false;
	cin>>s;
   
    
	for (int i = 0; i < s.length(); i++)
	{
		if (s[i]=='a'||s[i]=='e'||s[i]=='i'||s[i]=='o'||s[i]=='u')
		{
			continue;

		}
		else{
			if (s[i]=='n')
			{
				if (s[i+1]=='a'||s[i+1]=='e'||s[i+1]=='i'||s[i+1]=='o'||s[i+1]=='u')
				{
					n=false;
					break;
				}
				else
				{continue;}
				
			}
			
			else if (s[i+1]=='a'||s[i+1]=='e'||s[i+1]=='i'||s[i+1]=='o'||s[i+1]=='u')
			{
				n=true;
			}
			else{
				n=false;
			}
			
		}
		
	}
     if (s[(s.length()-1)]!='a'&& s[(s.length()-1)]!='e'&& s[(s.length()-1)]!='i'&& s[(s.length()-1)]!='o'&& s[(s.length()-1)]!='u'&& s[(s.length()-1)]!='n')
    {
        n=false;
    }
	
    if (n)
	{
		cout<<"YES";
	}

	else{
		cout<<"NO";
	}
	
	return 0;
    
	
}