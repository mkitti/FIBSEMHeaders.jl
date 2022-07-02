using HDF5

#=
 UInt32
 UInt16
 Float64
 UInt8
 
 Float32
 Int64
 NTuple{10, UInt8}
 NTuple{6, UInt8}
 Tuple{UInt8, UInt8}
 NTuple{8, Float32}
 NTuple{22, UInt8}
 NTuple{13, UInt8}
 NTuple{25, UInt8}
 NTuple{200, UInt8}
 NTuple{18, UInt8}
 NTuple{20, UInt8}
 NTuple{4, UInt8}
 NTuple{8, UInt8}
 NTuple{24, UInt8}
 Tuple{UInt8, UInt8, UInt8}
 NTuple{11, UInt8}
 NTuple{90, UInt8}
 NTuple{30, UInt8}
 NTuple{16, UInt8}
=#
fibsem_h5type(::Type{UInt32}) = HDF5.API.H5T_STD_U32BE
fibsem_h5type(::Type{UInt16}) = HDF5.API.H5T_STD_U16BE
fibsem_h5type(::Type{UInt8}) = HDF5.API.H5T_STD_U8BE

fibsem_h5type(::Type{Int64}) = HDF5.API.H5T_STD_I64BE
fibsem_h5type(::Type{Int32}) = HDF5.API.H5T_STD_I32BE

fibsem_h5type(::Type{Float64}) = HDF5.API.H5T_IEEE_F64BE
fibsem_h5type(::Type{Float32}) = HDF5.API.H5T_IEEE_F32BE

function fibsem_h5type(::Type{NTuple{N,UInt8}}) where N
    dt = HDF5.API.h5t_copy(HDF5.API.H5T_C_S1)
    HDF5.API.h5t_set_size(dt, N)
    return dt
end
function fibsem_h5type(::Type{NTuple{N,T}}) where {N,T}
    dt = HDF5.API.h5t_array_create(fibsem_h5type(T), 1, [N])
    return dt
end


function create_header_hdf5_datatype(t::Type{<: AbstractFIBSEMHeader}; include_space=true)
    dt = HDF5.create_datatype(HDF5.API.H5T_COMPOUND, 1024)
    offset = 0
    for (name, type) in zip(fieldnames(t), fieldtypes(t))
       if startswith(string(name), "space")
           if include_space
               space_dt = HDF5.API.h5t_create(HDF5.API.H5T_OPAQUE, sizeof(type))
               HDF5.API.h5t_insert(dt, name, offset, space_dt)
           end
       else
           HDF5.API.h5t_insert(dt, name, offset, FIBSEMHeaders.fibsem_h5type(type))
       end
       offset += sizeof(type)
    end
    return dt
end
