{$resource Application.App.xaml}

uses
    References_Generated,

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
