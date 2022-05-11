using FIBSEMHeaders
#FIBSEMHeaders.read_fibsem("Merlin-6281_21-06-18_203058_0-0-0.dat") |> e->show(stdout, MIME"text/plain"(), e)
FIBSEMHeaders.read_fibsem("Merlin-6281_21-06-18_203058_0-0-0.header") |> e->show(stdout, MIME"text/plain"(), e)
