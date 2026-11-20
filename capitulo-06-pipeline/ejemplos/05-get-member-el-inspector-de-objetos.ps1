# Fundamentos de PowerShell (2ª edición)
# Capítulo 6. Objetos y pipeline.
# Apartado: Get-Member: el inspector de objetos

Get-ChildItem -Path C:\Windows -File | Get-Member -MemberType Property

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
#    TypeName: System.IO.FileInfo
#
# Name              MemberType Definition
# ----              ---------- ----------
# Attributes        Property   System.IO.FileAttributes Attributes {get;set;}
# CreationTime      Property   datetime CreationTime {get;set;}
# CreationTimeUtc   Property   datetime CreationTimeUtc {get;set;}
# Directory         Property   System.IO.DirectoryInfo Directory {get;}
# DirectoryName     Property   string DirectoryName {get;}
# Exists            Property   bool Exists {get;}
# Extension         Property   string Extension {get;}
# FullName          Property   string FullName {get;}
# IsReadOnly        Property   bool IsReadOnly {get;set;}
# LastAccessTime    Property   datetime LastAccessTime {get;set;}
# LastAccessTimeUtc Property   datetime LastAccessTimeUtc {get;set;}
# LastWriteTime     Property   datetime LastWriteTime {get;set;}
# LastWriteTimeUtc  Property   datetime LastWriteTimeUtc {get;set;}
# Length            Property   long Length {get;}
# LinkTarget        Property   string LinkTarget {get;}
# Name              Property   string Name {get;}
# UnixFileMode      Property   System.IO.UnixFileMode UnixFileMode {get;set;}
