using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Calculator
{
    public class Calculate
    {
        public string Calculate_Result(string expression)
        {
            char[] tokens = expression.ToCharArray();
            
            Stack<double> values = new Stack<double>();
            Stack<char> ops = new Stack<char>();

            try
            {
                for (int i = 0; i < tokens.Length; i++)
                {
                    if (tokens[i] >= '0' && tokens[i] <= '9')
                    {
                        StringBuilder sbuf = new StringBuilder();
                        while (i < tokens.Length && tokens[i] >= '0' && tokens[i] <= '9')
                        {
                            sbuf.Append(tokens[i++]);
                        }
                        i--;
                        values.Push(int.Parse(sbuf.ToString()));
                    }                    
                    else if (tokens[i] == '(')
                    {
                        ops.Push(tokens[i]);
                    }                    
                    else if (tokens[i] == ')')
                    {
                        while (ops.Peek() != '(')
                        {
                            values.Push(applyOp(ops.Pop(), values.Pop(), values.Pop()));
                        }
                        ops.Pop();
                    }                    
                    else if (tokens[i] == '+' || tokens[i] == '-' || tokens[i] == '*' || tokens[i] == '/')
                    {                        
                        while (ops.Count > 0 && hasPrecedence(tokens[i], ops.Peek()))
                        {
                            values.Push(applyOp(ops.Pop(), values.Pop(), values.Pop()));
                        }
                        ops.Push(tokens[i]);
                    }
                }
                while (ops.Count > 0)
                {
                    values.Push(applyOp(ops.Pop(), values.Pop(), values.Pop()));
                }
                return values.Pop().ToString();
            }
            catch
            {
                Console.WriteLine("Invalid Input");
                return expression;
            }
        }

        public static bool hasPrecedence(char op1, char op2)
        {
            if (op2 == '(' || op2 == ')')
            {
                return false;
            }
            if ((op1 == '*' || op1 == '/') && (op2 == '+' || op2 == '-'))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public static double applyOp(char op, double b, double a)
        {
            switch (op)
            {
                case '+':
                    return a + b;
                case '-':
                    return a - b;
                case '*':
                    return a * b;
                case '/':
                    if (b == 0)
                    {
                        throw new System.NotSupportedException("Cannot divide by zero");
                    }
                    return a / b;
            }
            return 0;
        }
        public string Clear_Entry(string s)
        {
            return s.Substring(0, s.Length - 1);
        }
    }
}