
function ReadByUser() {

    $inputUser = Read-Host -Prompt "Enter Type: ";
    return $inputUser;
}

function Create_Number_R() {
    $Random_Color_Code = Get-Random -Minimum 1 -Maximum 10
    return $Random_Color_Code;
}

function Create_Range() {
    $ReadColorRGB = Get-Random -Minimum 1 -Maximum 255
    return $ReadColorRGB;
}

function CreateTitle() {

    $TITLE = "RGB Number Generator: ";
    Write-Host $TITLE;
}


function createdFunction($test) {
 
    CreateTitle

    $UserValue = '';
    
    $enteredCommand = "Enter Option: ";
    $usersChoice = ReadByUser 

    if ($test) {

        if ($isNamedRyan) {
            
            
            get_Input($enteredCommand);
            

            switch ($usersChoice) {

                "/RGB" {

                    $usersChoice = $UserValue;

                    $R = Create_Range;
                    $B = Create_Range;
                    $G = Create_Range;
        
        
                    Write-Output "R: $R";             
                    Write-Output "G: $G";             
                    Write-Output "B: $B";             
                }

                "DATE" {
                    $Date = Get-Date;
                    Write-Host $Date;
                }

                "HELP" {
                    $options = 'RGB', '/Home', 'Date'
                    Write-Output $options;
                }

            }


        }



    }
}

createdFunction -test "true"