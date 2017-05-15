{$reference libs/Avalonia.Controls.dll}
{$reference libs/Avalonia.Direct2D1.dll}
{$reference libs/Avalonia.DotNetFrameworkRuntime.dll}
{$reference libs/Avalonia.Markup.Xaml.dll}
{$reference libs/Avalonia.Win32.dll}

{$resource Application.App.xaml}

uses
    Avalonia,
    Avalonia.Controls,
    Avalonia.Markup.Xaml,

    MainWindowUnit;

type
    App = class(Application)
    public
        procedure Initialize; override;
        begin;
            AvaloniaXamlLoader.Load(Self);
        end;
    end;
begin
    AppBuilder.Configure&<App>()
        .UseWin32()
        .UseDirect2D1()
        .Start&<MainWindow>(nil);
end.
