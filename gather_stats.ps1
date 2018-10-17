# Gather Room Stats for Chaturbate
# JoeSpod
# https://twitter.com/spodjoe

# Set the $url variable with the value from your Chaturbate 'Authorize 3rd party stats' page
# or by visiting: https://chaturbate.com/statsapi/authtoken/
# (for security and peace of mind go via your chaturbate profile rather than the link!)
# this should look like...
#$url = "https://chaturbate.com/statsapi/?username=chaturbateuserid&token=RandomString"

$url = ""

$show_start = (Get-Date).ToString("yyyyMMdd_hhmm")

"Show Starting $show_start" | Out-Host

"press a key to halt stat capture" | out-host

$steps = 0
$finished = $false


while($finished -eq $false)
{
    if ([System.Console]::KeyAvailable -eq $true)
    {
            "time to finish!" | Out-Host
            $steps=0
            $finished=$true
    }

    if ($steps -eq 0)
    {
        $jval = wget -Uri $url -UseBasicParsing
        $val = ConvertFrom-Json -InputObject $jval.Content
        $val | Add-Member -MemberType NoteProperty -Name timestamp -Value (Get-Date).ToString("yyyy-MM-ddThh:mm:ss")
        $val | export-csv -Path "$($show_start).csv" -Append -NoTypeInformation

        $steps = 300
        $val.time_online | Out-Host
    }
    else
    {
        $steps = $steps -1
    }
   
    sleep 1
}

