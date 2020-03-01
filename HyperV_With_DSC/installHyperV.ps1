Configuration HyperVInstall {

    param
    (
        [string[]]$ComputerName='localhost'
    )

    Node $ComputerName {
        WindowsFeature Hyper-V {
            Ensure = 'Present'
            Name= "Hyper-V"
        }
    }
} 
