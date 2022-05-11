module FIBSEMHeaders

abstract type AbstractFIBSEMHeader end

struct FIBSEMHeader_v9 <: AbstractFIBSEMHeader
    FileMagicNum              :: UInt32                # 0
    FileVersion               :: UInt16                # 4
    FileType                  :: UInt16                # 6
    SWdate                    :: NTuple{10,UInt8}      # 8
    space18                   :: NTuple{6,UInt8}       # 18
    TimeStep                  :: Float64               # 24
    ChanNum                   :: UInt8                 # 32
    EightBit                  :: UInt8                 # 33
    space34                   :: NTuple{2,UInt8}       # 34
    Scaling                   :: NTuple{8,Float32}     # 36
    Restart                   :: UInt8                 # 68
    StageMove                 :: UInt8                 # 69
    FirstX                    :: Int32                 # 70
    FirstY                    :: Int32                 # 74
    space78                   :: NTuple{22,UInt8}      # 78
    XResolution               :: UInt32                # 100
    YResolution               :: UInt32                # 104
    Oversampling              :: UInt16                # 108
    space110                  :: UInt8                 # 110
    ZeissScanSpeed            :: UInt8                 # 111
    ScanRate                  :: Float32               # 112
    FramelineRampdownRatio    :: Float32               # 116
    Xmin                      :: Float32               # 120
    Xmax                      :: Float32               # 124
    Detmin                    :: Float32               # 128
    Detmax                    :: Float32               # 132
    DecimatingFactor          :: UInt16                # 136
    space138                  :: NTuple{13,UInt8}      # 138
    AI1                       :: UInt8                 # 151
    AI2                       :: UInt8                 # 152
    AI3                       :: UInt8                 # 153
    AI4                       :: UInt8                 # 154
    SampleID                  :: NTuple{25,UInt8}      # 155
    Notes                     :: NTuple{200, UInt8}    # 180
    DetA                      :: NTuple{10, UInt8}     # 380
    DetB                      :: NTuple{18, UInt8}     # 390
    space408                  :: NTuple{2,UInt8}       # 408
    DetC                      :: NTuple{20, UInt8}     # 410
    DetD                      :: NTuple{20, UInt8}     # 430
    space450                  :: NTuple{10, UInt8}     # 450
    Mag                       :: Float32               # 460
    PixelSize                 :: Float32               # 464
    WD                        :: Float32               # 468
    EHT                       :: Float32               # 472
    space476                  :: NTuple{4, UInt8}      # 476
    SEMApr                    :: UInt8                 # 480
    HighCurrent               :: UInt8                 # 481
    space482                  :: NTuple{8, UInt8}      # 482
    SEMCurr                   :: Float32               # 490
    SEMRot                    :: Float32               # 494
    ChamVac                   :: Float32               # 498
    GunVac                    :: Float32               # 502
    space506                  :: NTuple{4, UInt8}      # 506
    SEMShiftX                 :: Float32               # 510
    SEMShiftY                 :: Float32               # 514
    SEMStiX                   :: Float32               # 518
    SEMStiY                   :: Float32               # 522
    SEMAlnX                   :: Float32               # 526
    SEMAlnY                   :: Float32               # 530
    StageX                    :: Float32               # 534
    StageY                    :: Float32               # 538
    StageZ                    :: Float32               # 542
    StageT                    :: Float32               # 546
    StageR                    :: Float32               # 550
    StageM                    :: Float32               # 554
    space558                  :: NTuple{2,UInt8}       # 558
    BrightnessA               :: Float32               # 560
    ContrastA                 :: Float32               # 564
    BrightnessB               :: Float32               # 568
    ContrastB                 :: Float32               # 572
    space576                  :: NTuple{24, UInt8}     # 576
    Mode                      :: UInt8                 # 600
    space601                  :: NTuple{3,UInt8}       # 601
    FIBFocus                  :: Float32               # 604
    FIBProb                   :: UInt8                 # 608
    space609                  :: NTuple{11,UInt8}      # 609
    FIBCurr                   :: Float32               # 620
    FIBRot                    :: Float32               # 624
    FIBAlnX                   :: Float32               # 628
    FIBAlnY                   :: Float32               # 632
    FIBStiX                   :: Float32               # 636
    FIBStiY                   :: Float32               # 640
    FIBShiftX                 :: Float32               # 644
    FIBShiftY                 :: Float32               # 648
    MillingXResolution        :: Int32                 # 652
    MillingYResolution        :: Int32                 # 656
    MillingXSize              :: Float32               # 660
    MillingYSize              :: Float32               # 664
    MillingULAng              :: Float32               # 668
    MillingURAng              :: Float32               # 672
    MillingLineTime           :: Float32               # 676
    FIBFOV                    :: Float32               # 680
    MillingLinesPerImage      :: UInt16                # 684
    MillingPIDOn              :: UInt8                 # 686
    space687                  :: NTuple{2,UInt8}       # 687
    MillingPIDMeasured        :: UInt8                 # 689
    MillingPIDTarget          :: Float32               # 690
    MillingPIDTargetSlope     :: Float32               # 694
    MillingPIDP               :: Float32               # 698
    MillingPIDI               :: Float32               # 702
    MillingPIDD               :: Float32               # 706
    space710                  :: NTuple{90,UInt8}      # 710
    MachineID                 :: NTuple{30,UInt8}      # 800
    space830                  :: NTuple{20,UInt8}      # 830
    Temperature               :: Float32               # 850
    FaradayCupI               :: Float32               # 854
    FIBSpecimenI              :: Float32               # 858
    BeamDump1I                :: Float32               # 862
    SEMSpecimenICurrent       :: Float32               # 866
    MillingYVoltage           :: Float32               # 870
    FocusIndex                :: Float32               # 874
    FIBSliceNum               :: UInt32                # 878
    BeamDump2I                :: Float32               # 882
    MillingI                  :: Float32               # 886
    space890                  :: NTuple{90,UInt8}      # 890
    SEMSpecimenI              :: Float32               # 980
    space984                  :: NTuple{16,UInt8}      # 984
    FileLength                :: Int64                 # 1000
    space1008                 :: NTuple{16,UInt8}      # 1008
end

read(io::IO, args...) = Base.read(io, args...)
read(io::IO, ::Type{NTuple{N,T}}) where {N,T} = 
    ntuple(_->Base.read(io, T), N)
ntoh(@nospecialize(x)) = Base.ntoh(x)
ntoh(@nospecialize(t::Tuple)) = t
@generated function read_fibsem(io::IO, ::Type{T} = FIBSEMHeader_v9) where {T <: AbstractFIBSEMHeader}
    ft = fieldtypes(T)
    con = :(T())
    for t in ft
        push!(con.args, :(ntoh(read(io, $t))))
    end
    quote
        seekstart(io)
        $con
    end
end
function read_fibsem(filename::String, @nospecialize(T = FIBSEMHeader_v9))
    try
        io = open(filename, "r") do f
            try
                io = IOBuffer(read(f, 1024))
            catch err
                @error "Could not read 1024 bytes from $filename"
            end
            try
                read_fibsem(io, T)
            catch err
                @error "Failed to read FIBSEM header of type $T from byte buffer"
            end
        end
    catch err
        @error "Could not open $filename for rading"
    end
end
function Base.show(io::IO, ::MIME"text/plain", h::FIBSEMHeader_v9)
    for (name, type) in zip(fieldnames(typeof(h)), fieldtypes(typeof(h)))
        print(io, string(name)*": ")
        if type <: NTuple{N, UInt8} where N
            println(unsafe_string(pointer([getfield(h, name)...])))
        elseif type <: Tuple
            println(io, "sum = $(sum(getfield(h, name)))")
        else
            println(io, getfield(h, name))
        end
    end
end

include("precompile.jl")

end # module FIBSEMHeaders
