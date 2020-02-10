[33mcommit dfedab2a39c5ad34e602e6d029b94de097f9f8ed[m[33m ([m[1;36mHEAD -> [m[1;32mdevelop[m[33m, [m[1;33mtag: v1.0[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/develop[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32mmaster[m[33m)[m
Author: TimWCA <vihrianov1@outlook.com>
Date:   Mon Feb 10 18:44:58 2020 +0700

    Add description to README.md
    Добавлено описание в README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 7e9394d..a15735c 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -1,2 +1,8 @@[m
 # CS-Calculator[m
 Application for learn C#[m
[32m+[m[32mIf you change an application, please comment your code in English or Russian.[m
[32m+[m[32mLicense: GNU GPL v. 3.0.[m
[32m+[m
[32m+[m[32m# Описание проекта[m
[32m+[m[32mЭто проект простого калькулятора на C#, который выполнен в MS Visual Studio. Он создан для обучения C#. Если Вы хотите изменить или улучшить программу, пожалуйста, комментируйте свой код по-русский или по-английски, чтобы другие могли понять, что именно Вы сделали.[m
[32m+[m[32mПрограмма распространяется по лицензии GNU GPL v. 3.0.[m

[33mcommit 7f910b2614ae61d1cf439c95335cb6eaf76fda54[m
Author: TimWCA <vihrianov1@outlook.com>
Date:   Mon Feb 10 15:35:07 2020 +0700

    CS-Calculator Version 1.0
    It can compute basic math operations

[1mdiff --git a/Calculator/.vs/Calculator/v15/.suo b/Calculator/.vs/Calculator/v15/.suo[m
[1mnew file mode 100644[m
[1mindex 0000000..6c2c2bf[m
Binary files /dev/null and b/Calculator/.vs/Calculator/v15/.suo differ
[1mdiff --git a/Calculator/Calculator.sln b/Calculator/Calculator.sln[m
[1mnew file mode 100644[m
[1mindex 0000000..a43df43[m
[1m--- /dev/null[m
[1m+++ b/Calculator/Calculator.sln[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m﻿[m
[32m+[m[32mMicrosoft Visual Studio Solution File, Format Version 12.00[m
[32m+[m[32m# Visual Studio 15[m
[32m+[m[32mVisualStudioVersion = 15.0.26430.16[m
[32m+[m[32mMinimumVisualStudioVersion = 10.0.40219.1[m
[32m+[m[32mProject("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Calculator", "Calculator\Calculator.csproj", "{051855D4-D947-40E2-BECB-6763EC10F129}"[m
[32m+[m[32mEndProject[m
[32m+[m[32mGlobal[m
[32m+[m	[32mGlobalSection(SolutionConfigurationPlatforms) = preSolution[m
[32m+[m		[32mDebug|Any CPU = Debug|Any CPU[m
[32m+[m		[32mRelease|Any CPU = Release|Any CPU[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m	[32mGlobalSection(ProjectConfigurationPlatforms) = postSolution[m
[32m+[m		[32m{051855D4-D947-40E2-BECB-6763EC10F129}.Debug|Any CPU.ActiveCfg = Debug|Any CPU[m
[32m+[m		[32m{051855D4-D947-40E2-BECB-6763EC10F129}.Debug|Any CPU.Build.0 = Debug|Any CPU[m
[32m+[m		[32m{051855D4-D947-40E2-BECB-6763EC10F129}.Release|Any CPU.ActiveCfg = Release|Any CPU[m
[32m+[m		[32m{051855D4-D947-40E2-BECB-6763EC10F129}.Release|Any CPU.Build.0 = Release|Any CPU[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m	[32mGlobalSection(SolutionProperties) = preSolution[m
[32m+[m		[32mHideSolutionNode = FALSE[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m[32mEndGlobal[m
[1mdiff --git a/Calculator/Calculator/App.config b/Calculator/Calculator/App.config[m
[1mnew file mode 100644[m
[1mindex 0000000..88fa402[m
[1m--- /dev/null[m
[1m+++ b/Calculator/Calculator/App.config[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" ?>[m
[32m+[m[32m<configuration>[m
[32m+[m[32m    <startup>[m[41m [m
[32m+[m[32m        <supportedRuntime version="v4.0" sku=".NETFramework,Version=v4.5.2" />[m
[32m+[m[32m    </startup>[m
[32m+[m[32m</configuration>[m
\ No newline at end of file[m
[1mdiff --git a/Calculator/Calculator/Calculator.csproj b/Calculator/Calculator/Calculator.csproj[m
[1mnew file mode 100644[m
[1mindex 0000000..883d44e[m
[1m--- /dev/null[m
[1m+++ b/Calculator/Calculator/Calculator.csproj[m
[36m@@ -0,0 +1,82 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<Project ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>[m
[32m+[m[32m    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>[m
[32m+[m[32m    <ProjectGuid>{051855D4-D947-40E2-BECB-6763EC10F129}</ProjectGuid>[m
[32m+[m[32m    <OutputType>WinExe</OutputType>[m
[32m+[m[32m    <RootNamespace>Calculator</RootNamespace>[m
[32m+[m[32m    <AssemblyName>Calculator</AssemblyName>[m
[32m+[m[32m    <TargetFrameworkVersion>v4.5.2</TargetFrameworkVersion>[m
[32m+[m[32m    <FileAlignment>512</FileAlignment>[m
[32m+[m[32m    <AutoGenerateBindingRedirects>true</AutoGenerateBindingRedirects>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">[m
[32m+[m[32m    <PlatformTarget>AnyCPU</PlatformTarget>[m
[32m+[m[32m    <DebugSymbols>true</DebugSymbols>[m
[32m+[m[32m    <DebugType>full</DebugType>[m
[32m+[m[32m    <Optimize>false</Optimize>[m
[32m+[m[32m    <OutputPath>bin\Debug\</OutputPath>[m
[32m+[m[32m    <DefineConstants>DEBUG;TRACE</DefineConstants>[m
[32m+[m[32m    <ErrorReport>prompt</ErrorReport>[m
[32m+[m[32m    <WarningLevel>4</WarningLevel>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">[m
[32m+[m[32m    <PlatformTarget>AnyCPU</PlatformTarget>[m
[32m+[m[32m    <DebugType>pdbonly</DebugType>[m
[32m+[m[32m    <Optimize>true</Optimize>[m
[32m+[m[32m    <OutputPath>bin\Release\</OutputPath>[m
[32m+[m[32m    <DefineConstants>TRACE</DefineConstants>[m
[32m+[m[32m    <ErrorReport>prompt</ErrorReport>[m
[32m+[m[32m    <WarningLevel>4</WarningLevel>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <Reference Include="System" />[m
[32m+[m[32m    <Reference Include="System.Core" />[m
[32m+[m[32m    <Reference Include="System.Xml.Linq" />[m
[32m+[m[32m    <Reference Include="System.Data.DataSetExtensions" />[m
[32m+[m[32m    <Reference Include="Microsoft.CSharp" />[m
[32m+[m[32m    <Reference Include="System.Data" />[m
[32m+[m[32m    <Reference Include="System.Deployment" />[m
[32m+[m[32m    <Reference Include="System.Drawing" />[m
[32m+[m[32m    <Reference Include="System.Net.Http" />[m
[32m+[m[32m    <Reference Include="System.Windows.Forms" />[m
[32m+[m[32m    <Reference Include="System.Xml" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <Compile Include="Form1.cs">[m
[32m+[m[32m      <SubType>Form</SubType>[m
[32m+[m[32m    </Compile>[m
[32m+[m[32m    <Compile Include="Form1.Designer.cs">[m
[32m+[m[32m      <DependentUpon>Form1.cs</DependentUpon>[m
[32m+[m[32m    </Compile>[m
[32m+[m[32m    <Compile Include="Program.cs" />[m
[32m+[m[32m    <Compile Include="Properties\AssemblyInfo.cs" />[m
[32m+[m[32m    <EmbeddedResource Include="Form1.resx">[m
[32m+[m[32m      <DependentUpon>Form1.cs</DependentUpon>[m
[32m+[m[32m    </EmbeddedResource>[m
[32m+[m[32m    <EmbeddedResource Include="Properties\Resources.resx">[m
[32m+[m[32m      <Generator>ResXFileCodeGenerator</Generator>[m
[32m+[m[32m      <LastGenOutput>Resources.Designer.cs</LastGenOutput>[m
[32m+[m[32m      <SubType>Designer</SubType>[m
[32m+[m[32m    </EmbeddedResource>[m
[32m+[m[32m    <Compile Include="Properties\Resources.Designer.cs">[m
[32m+[m[32m      <AutoGen>True</AutoGen>[m
[32m+[m[32m      <DependentUpon>Resources.resx</DependentUpon>[m
[32m+[m[32m    </Compile>[m
[32m+[m[32m    <None Include="Properties\Settings.settings">[m
[32m+[m[32m      <Generator>SettingsSingleFileGenerator</Generator>[m
[32m+[m[32m      <LastGenOutput>Settings.Designer.cs</LastGenOutput>[m
[32m+[m[32m    </None>[m
[32m+[m[32m    <Compile Include="Properties\Settings.Designer.cs">[m
[32m+[m[32m      <AutoGen>True</AutoGen>[m
[32m+[m[32m      <DependentUpon>Settings.settings</DependentUpon>[m
[32m+[m[32m      <DesignTimeSharedInput>True</DesignTimeSharedInput>[m
[32m+[m[32m    </Compile>[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <None Include="App.config" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets" />[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/Calculator/Calculator/Form1.Designer.cs b/Calculator/Calculator/Form1.Designer.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..ab9d2f7[m
[1m--- /dev/null[m
[1m+++ b/Calculator/Calculator/Form1.Designer.cs[m
[36m@@ -0,0 +1,242 @@[m
[32m+[m[32m﻿namespace Calculator[m
[32m+[m[32m{[m
[32m+[m[32m    partial class CalculatorWindow[m
[32m+[m[32m    {[m
[32m+[m[32m        /// <summary>[m
[32m+[m[32m        /// Обязательная переменная конструктора.[m
[32m+[m[32m        /// </summary>[m
[32m+[m[32m        private System.ComponentModel.IContainer components = null;[m
[32m+[m
[32m+[m[32m        /// <summary>[m
[32m+[m[32m        /// Освободить все используемые ресурсы.[m
[32m+[m[32m        /// </summary>[m
[32m+[m[32m        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>[m
[32m+[m[32m        protected override void Dispose(bool disposing)[m
[32m+[m[32m        {[m
[32m+[m[32m            if (disposing && (components != null))[m
[32m+[m[32m            {[m
[32m+[m[32m                components.Dispose();[m
[32m+[m[32m            }[m
[32m+[m[32m            base.Dispose(disposing);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        #region Код, автоматически созданный конструктором форм Windows[m
[32m+[m
[32m+[m[32m        /// <summary>[m
[32m+[m[32m        /// Требуемый метод для поддержки конструктора — не изменяйте[m[41m [m
[32m+[m[32m        /// содержимое этого метода с помощью редактора кода.[m
[32m+[m[32m        /// </summary>[m
[32m+[m[32m        private void InitializeComponent()[m
[32m+[m[32m        {[m
[32m+[m[32m            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CalculatorWindow));[m
[32m+[m[32m            this.mathText = new System.Windows.Forms.TextBox();[m
[32m+[m[32m            this.button1 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button2 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button3 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button4 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button5 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button6 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button7 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button8 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button9 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.equalButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.plusButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.minusButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.mulButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.delButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.button0 = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.clearButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.dotButton = new System.Windows.Forms.Button();[m
[32m+[m[32m            this.SuspendLayout();[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // mathText[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            resources.ApplyResources(this.mathText, "mathText");[m
[32m+[m[32m            this.mathText.Name = "mathText";[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button1[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button1.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m            resources.ApplyResources(this.button1, "button1");[m
[32m+[m[32m            this.button1.Name = "button1";[m
[32m+[m[32m            this.button1.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.button1.Click += new System.EventHandler(this.button1_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button2[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button2.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m            resources.ApplyResources(this.button2, "button2");[m
[32m+[m[32m            this.button2.Name = "button2";[m
[32m+[m[32m            this.button2.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.button2.Click += new System.EventHandler(this.button2_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button3[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button3.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m            resources.ApplyResources(this.button3, "button3");[m
[32m+[m[32m            this.button3.Name = "button3";[m
[32m+[m[32m            this.button3.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.button3.Click += new System.EventHandler(this.button3_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button4[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button4.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m            resources.ApplyResources(this.button4, "button4");[m
[32m+[m[32m            this.button4.Name = "button4";[m
[32m+[m[32m            this.button4.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.button4.Click += new System.EventHandler(this.button4_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button5[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button5.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m            resources.ApplyResources(this.button5, "button5");[m
[32m+[m[32m            this.button5.Name = "button5";[m
[32m+[m[32m            this.button5.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.button5.Click += new System.EventHandler(this.button5_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button6[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button6.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m            resources.ApplyResources(this.button6, "button6");[m
[32m+[m[32m            this.button6.Name = "button6";[m
[32m+[m[32m            this.button6.UseVisualStyleBackColor = true;[m
[32m+[m[32m            this.button6.Click += new System.EventHandler(this.button6_Click);[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            // button7[m
[32m+[m[32m            //[m[41m [m
[32m+[m[32m            this.button7.Cursor = System.Windows.Forms.Cursors.Hand;[m
[32m+[m[32m