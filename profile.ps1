#pwsh profile
Set-Alias -Name c -Value Clear-Host;
Set-Alias -Name e -Value explorer;
Clear-Host;
function Kia-Setbg {
    param (
        [string[]]$ParameterName
    )
    $themes = @(
        @(1,'blue','red')
    );
    foreach ($Parameter in $ParameterName) {
        $themeCode = $ParameterName;
    }
    $themes = @(
       [pscustomobject]@{code='1';bg='Black';fg='white'}
       [pscustomobject]@{code='2';bg='DarkBlue';fg='white'}
       [pscustomobject]@{code='3';bg='DarkRed';fg='white'}
       [pscustomobject]@{code='4';bg='DarkGreen';fg='white'}
       [pscustomobject]@{code='5';bg='DarkYello';fg='white'}
    )
    function change-them ($themeCode) {
        $bg = 'black';
        $fg = 'white';
        foreach ($theme in $themes) {
            if ($theme.code -eq $themeCode) {
                $bg = $theme.bg;
                $fg = $theme.fg;
            }
        }
        $host.UI.RawUI.BackgroundColor = $bg;
        $host.UI.RawUI.ForegroundColor = $fg;
        Clear-Host;
    }
    change-them($themeCode);
}

