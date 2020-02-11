using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace Calculator
{
    public partial class CalculatorWindow : Form
    {
        int i = 0;
        public CalculatorWindow()
        {
            InitializeComponent();
        }

        private void CalculatorWindow_Load(object sender, EventArgs e)
        {

        }
        //
        //Цифровая клавиатура
        //

        private void button1_Click(object sender, EventArgs e) //Обработка нажатия кнопки -1-
        {
            mathText.Text += "1";
        }

        private void button2_Click(object sender, EventArgs e) //Обработка нажатия кнопки -2-
        {
            mathText.Text += "2";
        }

        private void button3_Click(object sender, EventArgs e) //Обработка нажатия кнопки -3-
        {
            mathText.Text += "3";
        }

        private void button4_Click(object sender, EventArgs e) //Обработка нажатия кнопки -4-
        {
            mathText.Text += "4";
        }

        private void button5_Click(object sender, EventArgs e) //Обработка нажатия кнопки -5-
        {
            mathText.Text += "5";
        }

        private void button6_Click(object sender, EventArgs e) //Обработка нажатия кнопки -6-
        {
            mathText.Text += "6";
        }

        private void button7_Click(object sender, EventArgs e) //Обработка нажатия кнопки -7-
        {
            mathText.Text += "7";
        }

        private void button8_Click(object sender, EventArgs e) //Обработка нажатия кнопки -8-
        {
            mathText.Text += "8";
        }

        private void button9_Click(object sender, EventArgs e) //Обработка нажатия кнопки -9-
        {
            mathText.Text += "9";
        }

        private void button0_Click(object sender, EventArgs e) //Обработка нажатия кнопки -0-
        {
            mathText.Text += "0";
        }

        //
        //Клавиши действий
        //

        private void clearButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки -C-
        {
            mathText.Text = "";
        }

        private void plusButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки -+-
        {
            mathText.Text += "+";
        }

        private void minusButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки ---
        {
            mathText.Text += "-";
        }

        private void mulButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки -*-
        {
            mathText.Text += "*";
        }

        private void delButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки -/-
        {
            mathText.Text += "/";
        }

        private void dotButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки -.-
        {
            mathText.Text += ".";
        }

        //
        //Вычисление действия
        //

        private void equalButton_Click(object sender, EventArgs e) //Обработка нажатия кнопки -=-
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-US");
            var ans = new DataTable().Compute(mathText.Text, null);
            mathText.Text = "" + ans;
            
        }

        private void sqrtButton_Click(object sender, EventArgs e) //Обработка корня
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-US");
            var ans = Int32.Parse(mathText.Text); //Получаем значение текстового поля и переводим в Int
            mathText.Text = "" + Math.Sqrt(ans); //Вычисляем корень и выводим ответ
        }

        
        private void degButton_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-US");
            i++;
            var n = Int32.Parse(mathText.Text);
            if (Int32.Parse(mathText.Text) != 0)
            {
                if (i == 1)
                {
                    mathText.Text = "Введите степень и нажмите эту же кнопку";
                    mathText.SelectionStart = 0;
                    mathText.SelectionLength = mathText.Text.Length;
                    mathText.Focus();
                }
                else if (i == 2)
                {
                    var deg = Int32.Parse(mathText.Text);
                    mathText.Text = "" + Math.Pow(n, deg);
                }
            } else
            {
                i = 0;
            }
        }
    }
}
