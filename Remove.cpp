//去命令行，得到纯数据 

#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <cstdlib>
using namespace std;   //如果用#include<iostream.h>就不需要写这句话（旧标准）。但是如果用#include<iostream>就必须要写。
int main()
{
	for(int i = 1;i <= 40;i++)
	{
		string line;
		char str[3];
		itoa(i,str,10);         //数值转换成字符串。其中i表示的是一个数值，str表示转换后存放字符串的指针,10表示基于10进制。
		ifstream myfile(str);   //以输入方式打开文件。
		char* tmp = "_";
		strcat(str,tmp);        //将tmp中的字符连接到str的字符后面，并在最后加一个“\0”，连接后的新的字符串存放在str中。
		ofstream outfile(str);  //以输出方式打开文件
		if(myfile.is_open() && outfile.is_open())
		{
			while(!myfile.eof())
			{
				getline(myfile,line); //默认回车符停止读入。
				if(line[0] != 'C')
					outfile << line << endl;
			}
		}
		else
			cout << "unable to open file";
		myfile.close();
		outfile.close();
	}
	return 0;
}
