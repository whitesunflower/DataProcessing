//ȥ�����У��õ������� 

#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <cstdlib>
using namespace std;   //�����#include<iostream.h>�Ͳ���Ҫд��仰���ɱ�׼�������������#include<iostream>�ͱ���Ҫд��
int main()
{
	for(int i = 1;i <= 40;i++)
	{
		string line;
		char str[3];
		itoa(i,str,10);         //��ֵת�����ַ���������i��ʾ����һ����ֵ��str��ʾת�������ַ�����ָ��,10��ʾ����10���ơ�
		ifstream myfile(str);   //�����뷽ʽ���ļ���
		char* tmp = "_";
		strcat(str,tmp);        //��tmp�е��ַ����ӵ�str���ַ����棬��������һ����\0�������Ӻ���µ��ַ��������str�С�
		ofstream outfile(str);  //�������ʽ���ļ�
		if(myfile.is_open() && outfile.is_open())
		{
			while(!myfile.eof())
			{
				getline(myfile,line); //Ĭ�ϻس���ֹͣ���롣
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
