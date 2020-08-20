using System;

namespace Pascals_triangle_in_Csharp
{
    class Program
    {
        static void Main(string[] args)
        {
            uint n;
            Console.WriteLine("How many rows of Pascals's triangle do you want to see?");
            while (!uint.TryParse(Console.ReadLine(), out n))
            {
                Console.WriteLine(Environment.NewLine + "The value you have provided is not a positive integer." + Environment.NewLine + "Please try again.");
            }

            int[,] pT;
            switch (n)
            {
                case 0:
                    Console.WriteLine("Zero it is then. Chao fow now!");
                    break;
                case 1:
                    pT = new int[1, 1] { { 1 } };
                    break;
                case 2:
                    pT = new int[2, 2];
                    pT[0, 0] = 1;
                    pT[1, 0] = 1;
                    pT[1, 1] = 1;

                    for (int i = 0; i < n; i++)
                    {
                        for (int j = 0; j < n; j++)
                        {
                            if (pT[i,j] == 0)
                            {
                                continue;
                            }
                            Console.Write(string.Format("{0} ", pT[i, j]));
                        }
                        Console.Write(Environment.NewLine);
                    }
                    break;
                default:
                    pT = new int[n, n];

                    for (int i = 0; i < n; i++)
                    {
                        for (int j = 0; j < n; j++)
                        {
                            if (pT[i,j] == 0)
                            {
                                continue;
                            }
                            Console.Write(string.Format("{0} ", pT[i, j]));
                        }
                        Console.Write(Environment.NewLine);
                    }
                    break;
            }
        }
    }
}
