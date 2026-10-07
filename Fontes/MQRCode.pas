unit MQRCode;

interface

uses
  SysUtils, Classes, Graphics;

const
  QR_EM_NUMERIC = 0;
  QR_EM_ALNUM   = 1;
  QR_EM_8BIT    = 2;
  QR_EM_KANJI   = 3;
  QR_EM_MAX     = 4;

  QR_ECL_L   = 0;
  QR_ECL_M   = 1;
  QR_ECL_Q   = 2;
  QR_ECL_H   = 3;
  QR_ECL_MAX = 4;

  QR_MM_DATA  = $01;
  QR_MM_BLACK = $02;
  QR_MM_FUNC  = $04;

  QR_DIM_SEP    = 4;
  QR_DIM_FINDER = 7;
  QR_DIM_ALIGN  = 5;
  QR_DIM_TIMING = 6;

  QR_SRC_MAX = 7089;
  QR_DIM_MAX = 177;
  QR_VER_MAX = 40;
  QR_DWD_MAX = 2956;
  QR_ECW_MAX = 2430;
  QR_CWD_MAX = 3706;
  QR_RSD_MAX = 123;
  QR_RSW_MAX = 68;
  QR_RSB_MAX = 2;
  QR_MPT_MAX = 8;
  QR_APL_MAX = 7;
  QR_FIN_MAX = 15;
  QR_VIN_MAX = 18;
  QR_CNN_MAX = 16;
  QR_PLS_MAX = 1024;

  NAV      = 0;
  PADWORD1 = $EC;
  PADWORD2 = $11;

type
  QR_RSBLOCK = record
    rsbnum: Integer;
    totalwords: Integer;
    datawords: Integer;
    ecnum: Integer;
  end;

  QR_ECLEVEL = record
    datawords: Integer;
    capacity: array[0..QR_EM_MAX - 1] of Integer;
    nrsb: Integer;
    rsb: array[0..QR_RSB_MAX - 1] of QR_RSBLOCK;
  end;

  QR_VERTABLE = record
    version: Integer;
    dimension: Integer;
    totalwords: Integer;
    remainedbits: Integer;
    nlen: array[0..QR_EM_MAX - 1] of Integer;
    ecl: array[0..QR_ECL_MAX - 1] of QR_ECLEVEL;
    aplnum: Integer;
    aploc: array[0..QR_APL_MAX - 1] of Integer;
  end;



const
  exp2fac: array[0..255] of Byte = (
      1,  2,  4,  8, 16, 32, 64,128, 29, 58,116,232,205,135, 19, 38,
     76,152, 45, 90,180,117,234,201,143,  3,  6, 12, 24, 48, 96,192,
    157, 39, 78,156, 37, 74,148, 53,106,212,181,119,238,193,159, 35,
     70,140,  5, 10, 20, 40, 80,160, 93,186,105,210,185,111,222,161,
     95,190, 97,194,153, 47, 94,188,101,202,137, 15, 30, 60,120,240,
    253,231,211,187,107,214,177,127,254,225,223,163, 91,182,113,226,
    217,175, 67,134, 17, 34, 68,136, 13, 26, 52,104,208,189,103,206,
    129, 31, 62,124,248,237,199,147, 59,118,236,197,151, 51,102,204,
    133, 23, 46, 92,184,109,218,169, 79,158, 33, 66,132, 21, 42, 84,
    168, 77,154, 41, 82,164, 85,170, 73,146, 57,114,228,213,183,115,
    230,209,191, 99,198,145, 63,126,252,229,215,179,123,246,241,255,
    227,219,171, 75,150, 49, 98,196,149, 55,110,220,165, 87,174, 65,
    130, 25, 50,100,200,141,  7, 14, 28, 56,112,224,221,167, 83,166,
     81,162, 89,178,121,242,249,239,195,155, 43, 86,172, 69,138,  9,
     18, 36, 72,144, 61,122,244,245,247,243,251,235,203,139, 11, 22,
     44, 88,176,125,250,233,207,131, 27, 54,108,216,173, 71,142,  1
  );

  fac2exp: array[0..255] of Byte = (
    NAV,  0,  1, 25,  2, 50, 26,198,  3,223, 51,238, 27,104,199, 75,
      4,100,224, 14, 52,141,239,129, 28,193,105,248,200,  8, 76,113,
      5,138,101, 47,225, 36, 15, 33, 53,147,142,218,240, 18,130, 69,
     29,181,194,125,106, 39,249,185,201,154,  9,120, 77,228,114,166,
      6,191,139, 98,102,221, 48,253,226,152, 37,179, 16,145, 34,136,
     54,208,148,206,143,150,219,189,241,210, 19, 92,131, 56, 70, 64,
     30, 66,182,163,195, 72,126,110,107, 58, 40, 84,250,133,186, 61,
    202, 94,155,159, 10, 21,121, 43, 78,212,229,172,115,243,167, 87,
      7,112,192,247,140,128, 99, 13,103, 74,222,237, 49,197,254, 24,
    227,165,153,119, 38,184,180,124, 17, 68,146,217, 35, 32,137, 46,
     55, 63,209, 91,149,188,207,205,144,135,151,178,220,252,190, 97,
    242, 86,211,171, 20, 42, 93,158,132, 60, 57, 83, 71,109, 65,162,
     31, 45, 67,216,183,123,164,118,196, 23, 73,236,127, 12,111,246,
    108,161, 59, 82, 41,157, 85,170,251, 96,134,177,187,204, 62, 90,
    203, 89, 95,176,156,169,160, 81, 11,245, 22,235,122,117, 44,215,
     79,174,213,233,230,231,173,232,116,214,244,234,168, 80, 88,175
  );

  gftable: array[0..QR_RSW_MAX, 0..QR_RSW_MAX - 1] of Byte = (
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (87,229,146,149,238,102,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (251,67,46,61,118,70,64,94,32,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (74,152,176,100,86,100,106,104,130,218,206,140,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (8,183,61,91,202,37,51,58,58,237,140,124,5,99,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (120,104,107,109,102,161,76,3,91,191,147,169,182,194,225,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (43,139,206,78,43,239,123,206,214,147,24,99,150,39,243,163,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (215,234,158,94,184,97,118,170,79,187,152,148,252,179,5,98,96,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (17,60,79,50,61,163,26,187,202,180,221,225,83,239,156,164,212,212,188,190,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (210,171,247,242,93,230,14,109,221,53,200,74,8,172,98,80,219,134,160,105,165,231,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (229,121,135,48,211,117,251,126,159,180,169,152,192,226,228,218,111,0,117,232,87,96,227,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (173,125,158,2,103,182,118,17,145,201,111,28,165,53,161,21,245,142,13,102,48,227,153,145,218,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (168,223,200,104,224,234,108,180,110,190,195,147,205,27,232,201,21,43,245,87,42,195,212,119,242,37,9,123,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (41,173,145,152,216,31,179,182,50,48,110,86,239,96,222,125,42,173,226,193,224,130,156,37,251,216,238,40,192,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (10,6,106,190,249,167,4,67,209,138,138,32,242,123,89,27,120,185,80,156,38,69,171,60,28,222,80,52,254,185,220,241,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (111,77,146,94,26,21,108,19,105,94,113,193,86,140,163,125,58,158,229,239,218,103,56,70,114,61,183,129,167,13,98,62,129,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (200,183,98,16,172,31,246,234,60,152,115,0,167,152,113,248,238,107,18,63,218,37,87,210,105,177,120,74,121,196,117,251,113,233,30,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (159,34,38,228,230,59,243,95,49,218,176,164,20,65,45,111,39,81,49,118,113,222,193,250,242,168,217,41,164,247,177,30,238,18,120,153,60,193,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (59,116,79,161,252,98,128,205,128,161,247,57,163,56,235,106,53,26,187,174,226,104,170,7,175,35,181,114,88,41,47,163,125,134,72,20,232,53,35,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (250,103,221,230,25,18,137,231,0,3,58,242,221,191,110,84,230,8,188,106,96,147,15,131,139,34,101,223,39,101,213,199,237,254,201,123,171,162,194,117,50,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (190,7,61,121,71,246,69,55,168,188,89,243,191,25,72,123,9,145,14,247,1,238,44,78,143,62,224,126,118,114,68,163,52,194,217,147,204,169,37,130,113,102,73,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (112,94,88,112,253,224,202,115,187,99,89,5,54,113,129,44,58,16,135,216,169,211,36,1,4,96,60,241,73,104,234,8,249,245,119,174,52,25,157,224,43,202,223,19,82,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (228,25,196,130,211,146,60,24,251,90,39,102,240,61,178,63,46,123,115,18,221,111,135,160,182,205,107,206,95,150,120,184,91,21,247,156,140,238,191,11,94,227,84,50,163,39,34,108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (232,125,157,161,164,9,118,46,209,99,203,193,35,3,209,111,195,242,203,225,46,13,32,160,126,209,130,160,242,215,242,75,77,42,189,32,113,65,124,69,228,114,235,175,124,170,215,232,133,205,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (116,50,86,186,50,220,251,89,192,46,86,127,124,19,184,233,151,215,22,14,59,145,37,242,203,134,254,89,190,94,59,65,124,113,100,233,235,121,22,76,86,97,39,242,200,220,101,33,239,254,116,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (183,26,201,87,210,221,113,21,46,65,45,50,238,184,249,225,102,58,209,218,109,165,26,95,184,192,52,245,35,254,238,175,172,79,123,25,122,43,120,108,215,80,128,201,235,8,153,59,101,31,198,76,31,156,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (106,120,107,157,164,216,112,116,2,91,248,163,36,201,202,229,6,144,254,155,135,208,170,209,12,139,127,142,182,249,177,174,190,28,10,85,239,184,101,124,152,206,96,23,163,61,27,196,247,151,154,202,207,20,61,10,0,0,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (82,116,26,247,66,27,62,107,252,182,200,185,235,55,251,242,210,144,154,237,176,141,192,248,152,249,206,85,253,142,65,165,125,23,24,30,122,240,214,6,129,218,29,145,127,134,206,245,117,29,41,63,159,142,233,125,148,123,0,0,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (107,140,26,12,9,141,243,197,226,197,219,45,211,101,219,120,28,181,127,6,100,247,2,205,198,57,115,219,101,109,160,82,37,38,238,49,160,209,121,86,11,124,30,181,84,25,194,87,65,102,190,220,70,27,209,16,89,7,33,240,0,0,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (65,202,113,98,71,223,248,118,214,94,0,122,37,23,2,228,58,121,7,105,135,78,243,118,70,76,223,89,72,50,70,111,194,17,212,126,181,35,221,117,235,11,229,149,147,123,213,40,115,6,200,100,26,246,182,218,127,215,36,186,110,106,0,0,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (45,51,175,9,7,158,159,49,68,119,92,123,177,204,187,254,200,78,141,149,119,26,127,53,160,93,199,212,29,24,145,156,208,150,218,209,4,216,91,47,184,146,47,140,195,195,125,242,238,63,99,108,140,230,242,31,204,11,178,243,217,156,213,231,0,0,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (5,118,222,180,136,136,162,51,46,117,13,215,81,17,139,247,197,171,95,173,65,137,178,68,111,95,101,41,72,214,169,197,95,7,44,154,77,111,236,40,121,143,63,87,80,253,240,126,217,77,34,232,106,50,168,82,76,146,67,106,171,25,132,93,45,105,0,0),
    (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
    (247,159,223,33,224,93,77,70,90,160,32,254,43,150,84,101,190,205,133,52,60,202,165,220,203,151,93,84,15,84,253,173,160,89,227,52,199,97,95,231,52,177,41,125,137,241,166,225,118,2,54,32,82,215,175,198,43,238,235,27,101,184,127,3,5,8,163,238)
  );

  F0 = QR_MM_FUNC;
  F1 = (QR_MM_FUNC or QR_MM_BLACK);

  finderpattern: array[0..QR_DIM_FINDER - 1, 0..QR_DIM_FINDER - 1] of Byte = (
    (F1, F1, F1, F1, F1, F1, F1),
    (F1, F0, F0, F0, F0, F0, F1),
    (F1, F0, F1, F1, F1, F0, F1),
    (F1, F0, F1, F1, F1, F0, F1),
    (F1, F0, F1, F1, F1, F0, F1),
    (F1, F0, F0, F0, F0, F0, F1),
    (F1, F1, F1, F1, F1, F1, F1)
  );

  alignpattern: array[0..QR_DIM_ALIGN - 1, 0..QR_DIM_ALIGN - 1] of Byte = (
    (F1, F1, F1, F1, F1),
    (F1, F0, F0, F0, F1),
    (F1, F0, F1, F0, F1),
    (F1, F0, F0, F0, F1),
    (F1, F1, F1, F1, F1)
  );

  modeid: array[0..QR_EM_MAX - 1] of Word = ($01, $02, $04, $08);

  alnumtable: array[0..127] of Shortint = (
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43,
     0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 44, -1, -1, -1, -1, -1,
    -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
    25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
  );

  EN = QR_EM_NUMERIC;
  EA = QR_EM_ALNUM;
  E8 = QR_EM_8BIT;
  EK = QR_EM_KANJI;

  charclass: array[0..255] of Shortint = (
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    EA, E8, E8, E8, EA, EA, E8, E8, E8, E8, EA, EA, E8, EA, EA, EA,
    EN, EN, EN, EN, EN, EN, EN, EN, EN, EN, EA, E8, E8, E8, E8, E8,
    E8, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA,
    EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, EA, E8, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    E8, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK,
    EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8,
    EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, EK, E8, E8, E8, E8,
    E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8, E8
  );

type
  COORD = record
    ypos: Integer;
    xpos: Integer;
  end;

const
  fmtinfopos: array[0..1, 0..QR_FIN_MAX - 1] of COORD = (
    ((ypos:  0; xpos:  8), (ypos: 1;  xpos:  8), (ypos:  2; xpos:  8),
     (ypos:  3; xpos:  8), (ypos: 4;  xpos:  8), (ypos:  5; xpos:  8),
     (ypos:  7; xpos:  8), (ypos: 8;  xpos:  8), (ypos: -7; xpos:  8),
     (ypos: -6; xpos:  8), (ypos: -5; xpos:  8), (ypos: -4; xpos:  8),
     (ypos: -3; xpos:  8), (ypos: -2; xpos:  8), (ypos: -1; xpos:  8)),
    ((ypos:  8; xpos: -1), (ypos: 8;  xpos: -2), (ypos:  8; xpos: -3),
     (ypos:  8; xpos: -4), (ypos: 8;  xpos: -5), (ypos:  8; xpos: -6),
     (ypos:  8; xpos: -7), (ypos: 8;  xpos: -8), (ypos:  8; xpos:  7),
     (ypos:  8; xpos:  5), (ypos: 8;  xpos:  4), (ypos:  8; xpos:  3),
     (ypos:  8; xpos:  2), (ypos: 8;  xpos:  1), (ypos:  8; xpos:  0))
  );

  fmtblackpos: COORD = (ypos: -8; xpos: 8);

  verinfopos: array[0..1, 0..QR_VIN_MAX - 1] of COORD = (
    ((ypos: -11; xpos: 0),   (ypos: -10; xpos:  0),  (ypos: -9; xpos:  0),
     (ypos: -11; xpos: 1),   (ypos: -10; xpos:  1),  (ypos: -9; xpos:  1),
     (ypos: -11; xpos: 2),   (ypos: -10; xpos:  2),  (ypos: -9; xpos:  2),
     (ypos: -11; xpos: 3),   (ypos: -10; xpos:  3),  (ypos: -9; xpos:  3),
     (ypos: -11; xpos: 4),   (ypos: -10; xpos:  4),  (ypos: -9; xpos:  4),
     (ypos: -11; xpos: 5),   (ypos: -10; xpos:  5),  (ypos: -9; xpos:  5 )),
    ((ypos:  0;  xpos: -11), (ypos:   0; xpos: -10), (ypos:  0; xpos: -9),
     (ypos:  1;  xpos: -11), (ypos:   1; xpos: -10), (ypos:  1; xpos: -9),
     (ypos:  2;  xpos: -11), (ypos:   2; xpos: -10), (ypos:  2; xpos: -9),
     (ypos:  3;  xpos: -11), (ypos:   3; xpos: -10), (ypos:  3; xpos: -9),
     (ypos:  4;  xpos: -11), (ypos:   4; xpos: -10), (ypos:  4; xpos: -9),
     (ypos:  5;  xpos: -11), (ypos:   5; xpos: -10), (ypos:  5; xpos: -9))
  );

  verinfo: array[0..QR_VER_MAX] of Longint = (
        -1,     -1,     -1,     -1,     -1,     -1,
        -1, $07C94, $085BC, $09A99, $0A4D3, $0BBF6,
    $0C762, $0D847, $0E60D, $0F928, $10B78, $1145D,
    $12A17, $13532, $149A6, $15683, $168C9, $177EC,
    $18EC4, $191E1, $1AFAB, $1B08E, $1CC1A, $1D33F,
    $1ED75, $1F250, $209D5, $216F0, $228BA, $2379F,
    $24B0B, $2542E, $26A64, $27541, $28C69
  );

  BinaryData: set of Byte = [$00..$08, $0B, $0C, $0E..$1F];

  Kanji1Data: set of Byte = [$81..$9F, $E0..$EB];
  Kanji2Data: set of Byte = [$40..$7E, $80..$FC];

type
  TLocation = (locLeft, locCenter, locRight);

  TQRMode = (qrSingle, qrConnect, qrPlus);

  TNumbering = (nbrNone, nbrHead, nbrTail, nbrIfVoid);

  TNotifyWatchEvent = procedure(Sender: TObject; Watch: Boolean) of object;

  { TQRCode }

  TQRCode = class(TBitmap)
  private
    FAutoVersion: boolean;
    FCode: AnsiString;
    FMemory: PAnsiChar;
    FLen: Integer;
    FBinary: Boolean;
    FBinaryOperation: Boolean;
    FMode: TQRMode;
    FCount: Integer;
    FColumn: Integer;
    FParity: Integer;
    FNumbering: TNumbering;
    FCommentUp: String;
    FCommentUpLoc: TLocation;
    FCommentDown: String;
    FCommentDownLoc: TLocation;
    FSymbolLeft: Integer;
    FSymbolTop: Integer;
    FSymbolSpaceUp: Integer;
    FSymbolSpaceDown: Integer;
    FSymbolSpaceLeft: Integer;
    FSymbolSpaceRight: Integer;
    FVersion: Integer;
    FEmode: Integer;
    FEmodeR: Integer;
    FEclevel: Integer;
    FMasktype: Integer;
    FMasktypeR: Integer;
    FPxmag: Integer;
    FReverse: Boolean;
    FPBM: TStringList;
    FMatch: Boolean;
    FComFont: TFont;
    FTransparent: Boolean;
    FSymbolColor: TColor;
    FBackColor: TColor;
    FSymbolEnabled: Boolean;
    FSymbolDebug: Boolean;
    FSymbolDisped: Boolean;
    FClearOption: Boolean;
    FClipWatch: Boolean;
    FWatch: Boolean;
    FOnChangeCode: TNotifyWatchEvent;
    FOnPaintSymbol: TNotifyWatchEvent;
    FOnPaintedSymbol: TNotifyWatchEvent;
    FOnChangedCode: TNotifyWatchEvent;
    FSkip: Boolean;
    vertable: array[0..QR_VER_MAX] of QR_VERTABLE;
    source: array[0..QR_SRC_MAX - 1] of Byte;
    dataword: array[0..QR_DWD_MAX - 1] of Byte;
    ecword: array[0..QR_ECW_MAX - 1] of Byte;
    codeword: array[0..QR_CWD_MAX - 1] of Byte;
    rswork: array[0..QR_RSD_MAX - 1] of Byte;
    symbol: array[0..QR_DIM_MAX - 1, 0..QR_DIM_MAX - 1] of Byte;
    offsets: array[0..QR_PLS_MAX] of Integer;
    srclen: Integer;
    dwpos: Integer;
    dwbit: Integer;
    xpos, ypos: Integer;
    xdir, ydir: Integer;
    icount: Integer;
    function GetOffset(Index: Integer): Integer;
    function GetSymbolWidth: Integer;
    function GetSymbolWidthS: Integer;
    function GetSymbolWidthA: Integer;
    function GetSymbolHeight: Integer;
    function GetSymbolHeightS: Integer;
    function GetSymbolHeightA: Integer;
    function GetQuietZone: Integer;
    function GetCapacity: Integer;
    procedure SetAutoVersion(const AValue: boolean);
    procedure SetCode(const Value: AnsiString);
    procedure SetBinaryOperation(const Value: Boolean);
    procedure SetMode(const Value: TQRMode);
    procedure SetCount(const Value: Integer);
    procedure SetColumn(const Value: Integer);
    procedure SetNumbering(const Value: TNumbering);
    procedure SetCommentUp(const Value: String);
    procedure SetCommentUpLoc(const Value: TLocation);
    procedure SetCommentDown(const Value: String);
    procedure SetCommentDownLoc(const Value: TLocation);
    procedure SetSymbolLeft(const Value: Integer);
    procedure SetSymbolTop(const Value: Integer);
    procedure SetSymbolSpaceUp(const Value: Integer);
    procedure SetSymbolSpaceDown(const Value: Integer);
    procedure SetSymbolSpaceLeft(const Value: Integer);
    procedure SetSymbolSpaceRight(const Value: Integer);
    procedure SetVersion(const Value: Integer);
    procedure SetEmode(const Value: Integer);
    procedure SetEclevel(const Value: Integer);
    procedure SetMasktype(const Value: Integer);
    procedure SetPxmag(const Value: Integer);
    procedure SetReverse(const Value: Boolean);
    procedure SetMatch(const Value: Boolean);
    procedure SetComFont(const Value: TFont);
    procedure SetSymbolColor(const Value: TColor);
    procedure SetBackColor(const Value: TColor);
    procedure SetSymbolEnabled(const Value: Boolean);
    procedure SetSymbolDebug(const Value: Boolean);
    procedure SetClearOption(const Value: Boolean);
    procedure PaintSymbolCodeB;
    function CPos(Ch: AnsiChar; const Str: AnsiString; Index: Integer): Integer;
    function Code2Data: Integer;
    procedure CheckParity;
    procedure CheckOffset;
    function isData(i, j: Integer): Boolean;
    function isBlack(i, j: Integer): Boolean;
    function isFunc(i, j: Integer): Boolean;
    function CharClassOf(src: PByte; len: Integer): Shortint;
    procedure initvertable;
    function qrEncodeDataWordA: Integer;
    function qrEncodeDataWordM: Integer;
    procedure qrInitDataWord;
    function qrGetSourceRegion(src: PByte; len: Integer; var mode: Integer): Integer;
    function qrGetEncodedLength(mode: Integer; len: Integer): Integer;
    procedure qrAddDataBits(n: Integer; w: Longword);
    function qrRemainedDataBits: Integer;
    procedure qrComputeECWord;
    procedure qrMakeCodeWord;
    procedure qrFillFunctionPattern;
    procedure qrFillCodeWord;
    procedure qrInitPosition;
    procedure qrNextPosition;
    procedure qrSelectMaskPattern;
    procedure qrSetMaskPattern(mask: Integer);
    function qrEvaluateMaskPattern: Longint;
    procedure qrFillFormatInfo;
    function GetVersion:Integer;
  protected
    procedure PaintSymbolCode; virtual;
    procedure ChangeCode; dynamic;
    procedure PaintSymbol; dynamic;
    procedure PaintedSymbol; dynamic;
    procedure ChangedCode; dynamic;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure Clear; virtual;
    procedure RepaintSymbol; virtual;

    property Offset[Index: Integer]: Integer read GetOffset;
  published
    property AutoVersion:boolean read FAutoVersion write SetAutoVersion;
    property Code: AnsiString read FCode write SetCode nodefault;
    property Len: Integer read FLen nodefault;
    property Binary: Boolean read FBinary nodefault;
    property BinaryOperation: Boolean read FBinaryOperation write SetBinaryOperation default False;
    property Mode: TQRMode read FMode write SetMode default qrSingle;
    property Count: Integer read FCount write SetCount default 1;
    property Column: Integer read FColumn write SetColumn default 16;
    property Parity: Integer read FParity nodefault;
    property Numbering: TNumbering read FNumbering write SetNumbering default nbrIfVoid;
    property CommentUp: String read FCommentUp write SetCommentUp nodefault;
    property CommentUpLoc: TLocation read FCommentUpLoc write SetCommentUpLoc nodefault;
    property CommentDown: String read FCommentDown write SetCommentDown nodefault;
    property CommentDownLoc: TLocation read FCommentDownLoc write SetCommentDownLoc nodefault;
    property SymbolWidth: Integer read GetSymbolWidth;
    property SymbolWidthS: Integer read GetSymbolWidthS;
    property SymbolWidthA: Integer read GetSymbolWidthA;
    property SymbolHeight: Integer read GetSymbolHeight;
    property SymbolHeightS: Integer read GetSymbolHeightS;
    property SymbolHeightA: Integer read GetSymbolHeightA;
    property QuietZone: Integer read GetQuietZone;
    property SymbolLeft: Integer read FSymbolLeft write SetSymbolLeft nodefault;
    property SymbolTop: Integer read FSymbolTop write SetSymbolTop nodefault;
    property SymbolSpaceUp: Integer read FSymbolSpaceUp write SetSymbolSpaceUp nodefault;
    property SymbolSpaceDown: Integer read FSymbolSpaceDown write SetSymbolSpaceDown nodefault;
    property SymbolSpaceLeft: Integer read FSymbolSpaceLeft write SetSymbolSpaceLeft nodefault;
    property SymbolSpaceRight: Integer read FSymbolSpaceRight write SetSymbolSpaceRight nodefault;
    property Version: Integer read FVersion write SetVersion default 1;
    property Emode: Integer read FEmode write SetEmode default -1;
    property Eclevel: Integer read FEclevel write SetEclevel default 0;
    property Masktype: Integer read FMasktype write SetMasktype default -1;
    property MasktypeR: Integer read FMasktypeR nodefault;
    property Capacity: Integer read GetCapacity;
    property Pxmag: Integer read FPxmag write SetPxmag default 1;
    property Reverse: Boolean read FReverse write SetReverse default False;
    property Match: Boolean read FMatch write SetMatch nodefault;
    property ComFont: TFont read FComFont write SetComFont stored True;
    property Transparent: Boolean read FTransparent write SetTransparent nodefault;
    property SymbolColor: TColor read FSymbolColor write SetSymbolColor default clBlack;
    property BackColor: TColor read FBackColor write SetBackColor default clWhite;
    property SymbolEnabled: Boolean read FSymbolEnabled write SetSymbolEnabled default True;
    property SymbolDebug: Boolean read FSymbolDebug write SetSymbolDebug nodefault;
    property SymbolDisped: Boolean read FSymbolDisped nodefault;
    property ClearOption: Boolean read FClearOption write SetClearOption default False;
    property OnChangeCode: TNotifyWatchEvent read FOnChangeCode write FOnChangeCode;
    property OnPaintSymbol: TNotifyWatchEvent read FOnPaintSymbol write FOnPaintSymbol;
    property OnPaintedSymbol: TNotifyWatchEvent read FOnPaintedSymbol write FOnPaintedSymbol;
    property OnChangedCode: TNotifyWatchEvent read FOnChangedCode write FOnChangedCode;
  end;

implementation

procedure MoveMemory(Destination: Pointer; Source: Pointer; Length: LongWord);
begin
  Move(Source^, Destination^, Length);
end;

procedure CopyMemory(Destination: Pointer; Source: Pointer; Length: LongWord);
begin
  Move(Source^, Destination^, Length);
end;

procedure FillMemory(Destination: Pointer; Length: LongWord; Fill: Byte);
begin
  FillChar(Destination^, Length, Fill);
end;

procedure ZeroMemory(Destination: Pointer; Length: LongWord);
begin
  FillChar(Destination^, Length, 0);
end;
constructor TQRCode.Create;
begin
  inherited Create;

  FCode := '';
  FMemory := Nil;
  FLen := 0;
  FBinary := False;
  FBinaryOperation := False;
  FMode := qrSingle;
  FCount := 1;
  FColumn := 16;
  icount := 1;
  ZeroMemory(@offsets, SizeOf(offsets));
  FParity := 0;
  FNumbering := nbrIfVoid;
  FCommentUp := '';
  FCommentUpLoc := locLeft;
  FCommentDown := '';
  FCommentDownLoc := locLeft;
  FSymbolLeft := 0;
  FSymbolTop := 0;
  FSymbolSpaceUp := 0;
  FSymbolSpaceDown := 0;
  FSymbolSpaceLeft := 0;
  FSymbolSpaceRight := 0;
  Version := 1;
  FEmode := -1;
  FEmodeR := FEmode;
  FEclevel := QR_ECL_L;
  FMasktype := -1;
  FMasktypeR := FMasktype;
  FPxmag := 1;
  FReverse := False;
  FPBM := TStringList.Create;
  FPBM.Duplicates := dupAccept;
  FMatch := False;
  FTransparent := False;
  FComFont := TFont.Create;
  FSymbolColor := clBlack;
  FBackColor := clWhite;
  FSymbolEnabled := True;
  FSymbolDebug := False;
  FSymbolDisped := False;
  FClearOption := False;
  initvertable;
  FClipWatch := False;
  FWatch := False;
  FSkip := False;
end;

destructor TQRCode.Destroy;
begin
  FComFont.Free;
  FPBM.Free;
  ReallocMem(FMemory, 0);
  inherited Destroy;
end;

procedure TQRCode.ChangeCode;
begin
  if Assigned(FOnChangeCode) and FSymbolEnabled then
    FOnChangeCode(Self, FWatch);
end;

procedure TQRCode.ChangedCode;
begin
  if Assigned(FOnChangedCode) and FSymbolEnabled then
    FOnChangedCode(Self, FWatch);
end;
function TQRCode.CharClassOf(src: PByte; len: Integer): Shortint;
begin
  Result := -1;
  if (src = Nil) or (len < 1) then
    Exit;

  Result := charclass[src^];
  if Result = QR_EM_KANJI then
  begin
    if len = 1 then
      Result := QR_EM_8BIT
    else
    begin
      Inc(src);
      if not (src^ in Kanji2Data) then
        Result := QR_EM_8BIT;
    end;
  end;
end;

procedure TQRCode.CheckOffset;
var
  i, j: Integer;
  d: Integer;
begin
  if FCount > FLen then
    FCount := FLen;

  if FCount < 1 then
    FCount := 1
  else if FCount > QR_PLS_MAX then
    FCount := QR_PLS_MAX;

  d := FLen div FCount;
  if (d * FCount < FLen) and ((d + 1) * (FCount - 1) < FLen) then
    Inc(d);
  i := 0;
  j := 0;
  offsets[i] := j;
  Inc(i);
  j := j + d;
  while (i < FCount) and (j < FLen) do
  begin
    if (StrByteType(FMemory, j) = mbTrailByte) and
     (Byte(FMemory[j]) in Kanji2Data) then
    begin
      if j - 1 > offsets[i - 1] then
        Dec(j)
      else if j + 1 < FLen then
        Inc(j)
      else
        Break;
    end;
    offsets[i] := j;
    Inc(i);
    j := j + d;
  end;
  offsets[i] := FLen;
  FCount := i;

  if FCount = 1 then
    FMode := qrSingle
  else if FCount <= QR_CNN_MAX then
  begin
    if FMode = qrSingle then
      FMode := qrConnect;
  end
  else
    FMode := qrPlus;
end;

procedure TQRCode.CheckParity;
var
  i: Integer;
  pr: Byte;
  err: String;
begin
  err := '';
  if FLen < 0 then
    err := 'Len'
  else if (FCount < 1) or (FCount > QR_PLS_MAX) then
    err := 'Count'
  else if (FMode <> qrSingle) and (FMode <> qrConnect) and (FMode <> qrPlus) then
    err := 'Mode'
  else if (FColumn < 1) or (FColumn > QR_PLS_MAX) then
    err := 'Column'
  else if FLen = 0 then
  begin
    if FCount <> 1 then
      err := 'Count'
    else if FMode <> qrSingle then
      err := 'Mode'
    else if offsets[0] <> 0 then
      err := '0'
    else if offsets[1] <> 0 then
      err := '1';
  end
  else
  begin
    if FCount > Flen then
      err := 'Count'
    else if (FMode = qrSingle) and (FCount <> 1) then
      err := 'Count'
    else if (FMode = qrConnect) and ((FCount < 2) or (FCount > QR_CNN_MAX))then
      err := 'Count'
    else if (FMode = qrPlus) and ((FCount < 2) or (FCount > QR_PLS_MAX))then
      err := 'Count'
    else if offsets[0] <> 0 then
      err := '0'
    else if offsets[FCount] <> FLen then
      err := IntToStr(FCount)
    else
    begin
      for i := 1 to FCount do
      begin
        if offsets[i] <= offsets[i - 1] then
        begin
          err := IntToStr(i);
          Break;
        end;
      end;
    end;
  end;

  if err <> '' then
  begin
    if err = 'Len' then
      i := FLen
    else if err = 'Count' then
      i := FCount
    else if err = 'Mode' then
      i := Integer(FMode)
    else if err = 'Column' then
      i := FColumn
    else
    begin
      i := StrToInt(err);
      i := offsets[i];
      err := 'Offset[' + err + ']';
    end;
    err := 'Illegal ' + err + ' : %d';
    raise Exception.CreateFmt(err, [i]);
  end;

  if (FMode <> qrConnect) or (FLen div FCount > QR_SRC_MAX) then
    Exit;

  pr := Byte(FMemory[0]);
  for i := 1 to FLen - 1 do
    pr := pr xor Byte(FMemory[i]);
  FParity := Integer(pr);
end;

procedure TQRCode.Clear;
begin
  if FSymbolDisped = True then
    FSymbolDisped := False;
  FreeImage;
end;

function TQRCode.Code2Data: Integer;
var
  i, j: Integer;
  p1, p2: Integer;
  S: AnsiString;
  e: Integer;
begin
  Result := Length(FCode);
  FBinary := False;
  ReallocMem(FMemory, Result + 4);
  if Result = 0 then
    Exit;
  i := 1;
  j := 0;
  S := '$00';

  if FBinaryOperation = True then
  begin
    while i <= Result do
    begin
      p1 := CPos('~', FCode, i);
      if p1 = 0 then
      begin
        while i <= Result do
        begin
          FMemory[j] := FCode[i];
          Inc(j);
          Inc(i);
        end;
        Break;
      end;
      p2 := CPos('~', FCode, p1 + 1);
      if (p2 = 0) or ((p2 - p1 - 1) mod 2 <> 0) then
      begin
        i := 0;
        Break;
      end;
      while i < p1 do
      begin
        FMemory[j] := FCode[i];
        Inc(j);
        Inc(i);
      end;
      if p2 = p1 + 1 then
      begin
        FMemory[j] := '~';
        Inc(j);
      end
      else
      begin
        i := p1 + 1;
        while i <= p2 - 2 do
        begin
          S[2] := FCode[i];
          Inc(i);
          S[3] := FCode[i];
          Inc(i);
          e := StrToIntDef(S, 256);
          if e = 256 then
          begin
            i := 0;
            Break;
          end;
          FMemory[j] := AnsiChar(Chr(e));
          Inc(j);
          if Byte(e) in BinaryData then
            FBinary := True;
        end;
      end;
      if i = 0 then
        Break;
      i := p2 + 1;
    end;
    if i = 0 then
    begin
      FBinaryOperation := False;
      FBinary := False;
    end
    else
    begin
      if Result <> j then
      begin
        Result := j;
        ReallocMem(FMemory, Result + 4);
        FMemory[Result] := Chr($00);
        FMemory[Result + 1] := Chr($00);
        FMemory[Result + 2] := Chr($00);
        FMemory[Result + 3] := Chr($00);
      end;
      Exit;
    end;
  end;

  CopyMemory(FMemory, PAnsiChar(FCode), Result);
  FMemory[Result] := Chr($00);
  FMemory[Result + 1] := Chr($00);
  FMemory[Result + 2] := Chr($00);
  FMemory[Result + 3] := Chr($00);
end;


function TQRCode.CPos(Ch: AnsiChar; const Str: AnsiString; Index: Integer): Integer;
var
  i: Integer;
begin
  Result := 0;
  if Index < 1 then
    Exit;
  for i := Index to Length(Str) do
  begin
    if Str[i] = Ch then
    begin
      Result := i;
      Break;
    end;
  end;
end;

function TQRCode.GetCapacity: Integer;
var
  em: Integer;
begin
  em := FEmodeR;
  if em = -1 then
    em := QR_EM_ALNUM;
  Result := vertable[Version].ecl[FEclevel].capacity[em] * FCount;
end;

procedure TQRCode.SetAutoVersion(const AValue: boolean);
begin
  if FAutoVersion=AValue then exit;
  FAutoVersion:=AValue;
end;

function TQRCode.GetVersion:Integer;
var
  em: Integer;
  i:integer;
begin
  em := FEmodeR;
  if em = -1 then
    em := QR_EM_ALNUM;
 Result:=40;
 for I := 1 to  QR_VER_MAX do
  begin
   if FLen<=vertable[I].ecl[FEclevel].capacity[em]
    then
     begin
     Result:=i;
     break;
     end;

  end;

end;
function TQRCode.GetOffset(Index: Integer): Integer;
begin
  if (Index < 0) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount]);
  Result := offsets[Index];
end;


function TQRCode.GetQuietZone: Integer;
begin
  Result := QR_DIM_SEP * FPxmag;
end;

function TQRCode.GetSymbolHeight: Integer;
begin
  Result := (vertable[Version].dimension + QR_DIM_SEP * 2) * FPxmag;
end;

function TQRCode.GetSymbolHeightA: Integer;
var
  n: Integer;
begin
  n := FCount div FColumn;
  if (FCount mod FColumn) <> 0 then
    Inc(n);
  Result := SymbolHeightS * n
end;

function TQRCode.GetSymbolHeightS: Integer;
begin
  Result := FSymbolSpaceUp + SymbolHeight + FSymbolSpaceDown;
end;

function TQRCode.GetSymbolWidth: Integer;
begin
  Result := (vertable[Version].dimension + QR_DIM_SEP * 2) * FPxmag;
end;

function TQRCode.GetSymbolWidthA: Integer;
var
  n: Integer;
begin
  if FCount < FColumn then
    n := FCount
  else
    n := FColumn;
  Result := SymbolWidthS * n
end;

function TQRCode.GetSymbolWidthS: Integer;
begin
  Result :=  FSymbolSpaceLeft + SymbolWidth + FSymbolSpaceRight;
end;

procedure TQRCode.initvertable;
const
  capacities: array[1..40, 0..3, 0..3] of Integer = (
    // version 1
    ((41, 25, 17, 10), (34, 20, 14, 8), (27, 16, 11, 7), (17, 10, 7, 4)),
    // version 2
    ((77, 47, 32, 20), (63, 38, 26, 16), (48, 29, 20, 12), (34, 20, 14, 8)),
    // version 3
    ((127, 77, 53, 32), (101, 61, 42, 26), (77, 47, 32, 20), (58, 35, 24, 15)),
    // version 4
    ((187, 114, 78, 48), (149, 90, 62, 38), (111, 67, 46, 28), (82, 50, 34, 21)),
    // version 5
    ((255, 154, 106, 65), (202, 122, 84, 52), (144, 87, 60, 37), (106, 64, 44, 27)),
    // version 6
    ((322, 195, 134, 82), (255, 154, 106, 65), (178, 108, 74, 45), (139, 84, 58, 36)),
    // version 7
    ((370, 224, 154, 95), (293, 178, 122, 75), (207, 125, 86, 53), (154, 93, 64, 39)),
    // version 8
    ((461, 279, 192, 118), (365, 221, 152, 93), (259, 157, 108, 66), (202, 122, 84, 52)),
    // version 9
    ((552, 335, 230, 141), (432, 262, 180, 111), (312, 189, 130, 80), (235, 143, 98, 60)),
    // version 10
    ((652, 395, 271, 167), (513, 311, 213, 131), (364, 221, 151, 93), (288, 174, 119, 74)),
    // version 11
    ((772, 468, 321, 198), (604, 366, 251, 155), (427, 259, 177, 109), (331, 200, 137, 85)),
    // version 12
    ((883, 535, 367, 226), (691, 419, 287, 177), (489, 296, 203, 125), (374, 227, 155, 96)),
    // version 13
    ((1022, 619, 425, 262), (796, 483, 331, 204), (580, 352, 241, 149), (427, 259, 177, 109)),
    // version 14
    ((1101, 667, 458, 282), (871, 528, 362, 223), (621, 376, 258, 159), (468, 283, 194, 120)),
    // version 15
    ((1250, 758, 520, 320), (991, 600, 412, 254), (703, 426, 292, 180), (530, 321, 220, 136)),
    // version 16
    ((1408, 854, 586, 361), (1082, 656, 450, 277), (775, 470, 322, 198), (602, 365, 250, 154)),
    // version 17
    ((1548, 938, 644, 397), (1212, 734, 504, 310), (876, 531, 364, 224), (674, 408, 280, 173)),
    // version 18
    ((1725, 1046, 718, 442), (1346, 816, 560, 345), (948, 574, 394, 243), (746, 452, 310, 191)),
    // version 19
    ((1903, 1153, 792, 488), (1500, 909, 624, 384), (1063, 644, 442, 272), (813, 493, 338, 208)),
    // version 20
    ((2061, 1249, 858, 528), (1600, 970, 666, 410), (1159, 702, 482, 297), (919, 557, 382, 235)),
    // version 21
    ((2232, 1352, 929, 572), (1708, 1035, 711, 438), (1224, 742, 509, 314), (969, 587, 403, 248)),
    // version 22
    ((2409, 1460, 1003, 618), (1872, 1134, 779, 480), (1358, 823, 565, 348), (1056, 640, 439, 270)),
    // version 23
    ((2620, 1588, 1091, 672), (2059, 1248, 857, 528), (1468, 890, 611, 376), (1108, 672, 461, 284)),
    // version 24
    ((2812, 1704, 1171, 721), (2188, 1326, 911, 561), (1588, 963, 661, 407), (1228, 744, 511, 315)),
    // version 25
    ((3057, 1853, 1273, 784), (2395, 1451, 997, 614), (1718, 1041, 715, 440), (1286, 779, 535, 330)),
    // version 26
    ((3283, 1990, 1367, 842), (2544, 1542, 1059, 652), (1804, 1094, 751, 462), (1425, 864, 593, 365)),
    // version 27
    ((3517, 2132, 1465, 902), (2701, 1637, 1125, 692), (1933, 1172, 805, 496), (1501, 910, 625, 385)),
    // version 28
    ((3669, 2223, 1528, 940), (2857, 1732, 1190, 732), (2085, 1263, 868, 534), (1581, 958, 658, 405)),
    // version 29
    ((3909, 2369, 1628, 1002), (3035, 1839, 1264, 778), (2181, 1322, 908, 559), (1677, 1016, 698, 430)),
    // version 30
    ((4158, 2520, 1732, 1066), (3289, 1994, 1370, 843), (2358, 1429, 982, 604), (1782, 1080, 742, 457)),
    // version 31
    ((4417, 2677, 1840, 1132), (3486, 2113, 1452, 894), (2473, 1499, 1030, 634), (1897, 1150, 790, 486)),
    // version 32
    ((4686, 2840, 1952, 1201), (3693, 2238, 1538, 947), (2670, 1618, 1112, 684), (2022, 1226, 842, 518)),
    // version 33
    ((4965, 3009, 2068, 1273), (3909, 2369, 1628, 1002), (2805, 1700, 1168, 719), (2157, 1307, 898, 553)),
    // version 34
    ((5253, 3183, 2188, 1347), (4134, 2506, 1722, 1060), (2949, 1787, 1228, 756), (2301, 1394, 958, 590)),
    // version 35
    ((5529, 3351, 2303, 1417), (4343, 2632, 1809, 1113), (3081, 1867, 1283, 790), (2361, 1431, 983, 605)),
    // version 36
    ((5836, 3537, 2431, 1496), (4588, 2780, 1911, 1176), (3244, 1966, 1351, 832), (2524, 1530, 1051, 647)),
    // version 37
    ((6153, 3729, 2563, 1577), (4775, 2894, 1989, 1224), (3417, 2071, 1423, 876), (2625, 1591, 1093, 673)),
    // version 38
    ((6479, 3927, 2699, 1661), (5039, 3054, 2099, 1292), (3599, 2181, 1499, 923), (2735, 1658, 1139, 701)),
    // version 39
    ((6743, 4087, 2809, 1729), (5313, 3220, 2213, 1362), (3791, 2298, 1579, 972), (2927, 1774, 1219, 750)),
    // version 40
    ((7089, 4296, 2953, 1817), (5596, 3391, 2331, 1435), (3993, 2420, 1663, 1024), (3057, 1852, 1273, 784))
  );

  rsbs: array[0..287] of QR_RSBLOCK = (
    // version 1
    (rsbnum: 1; totalwords: 26; datawords: 19; ecnum: 2),
    (rsbnum: 1; totalwords: 26; datawords: 16; ecnum: 4),
    (rsbnum: 1; totalwords: 26; datawords: 13; ecnum: 6),
    (rsbnum: 1; totalwords: 26; datawords: 9; ecnum: 8),
    // version 2
    (rsbnum: 1; totalwords: 44; datawords: 34; ecnum: 4),
    (rsbnum: 1; totalwords: 44; datawords: 28; ecnum: 8),
    (rsbnum: 1; totalwords: 44; datawords: 22; ecnum: 11),
    (rsbnum: 1; totalwords: 44; datawords: 16; ecnum: 14),
    // version 3
    (rsbnum: 1; totalwords: 70; datawords: 55; ecnum: 7),
    (rsbnum: 1; totalwords: 70; datawords: 44; ecnum: 13),
    (rsbnum: 2; totalwords: 35; datawords: 17; ecnum: 9),
    (rsbnum: 2; totalwords: 35; datawords: 13; ecnum: 11),
    // version 4
    (rsbnum: 1; totalwords: 100; datawords: 80; ecnum: 10),
    (rsbnum: 2; totalwords: 50; datawords: 32; ecnum: 9),
    (rsbnum: 2; totalwords: 50; datawords: 24; ecnum: 13),
    (rsbnum: 4; totalwords: 25; datawords: 9; ecnum: 8),
    // version 5
    (rsbnum: 1; totalwords: 134; datawords: 108; ecnum: 13),
    (rsbnum: 2; totalwords: 67; datawords: 43; ecnum: 12),
    (rsbnum: 2; totalwords: 33; datawords: 15; ecnum: 9), (rsbnum: 2; totalwords: 34; datawords: 16; ecnum: 9),
    (rsbnum: 2; totalwords: 33; datawords: 11; ecnum: 11), (rsbnum: 2; totalwords: 34; datawords: 12; ecnum: 11),
    // version 6
    (rsbnum: 2; totalwords: 86; datawords: 68; ecnum: 9),
    (rsbnum: 4; totalwords: 43; datawords: 27; ecnum: 8),
    (rsbnum: 4; totalwords: 43; datawords: 19; ecnum: 12),
    (rsbnum: 4; totalwords: 43; datawords: 15; ecnum: 14),
    // version 7
    (rsbnum: 2; totalwords: 98; datawords: 78; ecnum: 10),
    (rsbnum: 4; totalwords: 49; datawords: 31; ecnum: 9),
    (rsbnum: 2; totalwords: 32; datawords: 14; ecnum: 9), (rsbnum: 4; totalwords: 33; datawords: 15; ecnum: 9),
    (rsbnum: 4; totalwords: 39; datawords: 13; ecnum: 13), (rsbnum: 1; totalwords: 40; datawords: 14; ecnum: 13),
    // version 8
    (rsbnum: 2; totalwords: 121; datawords: 97; ecnum: 12),
    (rsbnum: 2; totalwords: 60; datawords: 38; ecnum: 11), (rsbnum: 2; totalwords: 61; datawords: 39; ecnum: 11),
    (rsbnum: 4; totalwords: 40; datawords: 18; ecnum: 11), (rsbnum: 2; totalwords: 41; datawords: 19; ecnum: 11),
    (rsbnum: 4; totalwords: 40; datawords: 14; ecnum: 13), (rsbnum: 2; totalwords: 41; datawords: 15; ecnum: 13),
    // version 9
    (rsbnum: 2; totalwords: 146; datawords: 116; ecnum: 15),
    (rsbnum: 3; totalwords: 58; datawords: 36; ecnum: 11), (rsbnum: 2; totalwords: 59; datawords: 37; ecnum: 11),
    (rsbnum: 4; totalwords: 36; datawords: 16; ecnum: 10), (rsbnum: 4; totalwords: 37; datawords: 17; ecnum: 10),
    (rsbnum: 4; totalwords: 36; datawords: 12; ecnum: 12), (rsbnum: 4; totalwords: 37; datawords: 13; ecnum: 12),
    // version 10
    (rsbnum: 2; totalwords: 86; datawords: 68; ecnum: 9), (rsbnum: 2; totalwords: 87; datawords: 69; ecnum: 9),
    (rsbnum: 4; totalwords: 69; datawords: 43; ecnum: 13), (rsbnum: 1; totalwords: 70; datawords: 44; ecnum: 13),
    (rsbnum: 6; totalwords: 43; datawords: 19; ecnum: 12), (rsbnum: 2; totalwords: 44; datawords: 20; ecnum: 12),
    (rsbnum: 6; totalwords: 43; datawords: 15; ecnum: 14), (rsbnum: 2; totalwords: 44; datawords: 16; ecnum: 14),
    // version 11
    (rsbnum: 4; totalwords: 101; datawords: 81; ecnum: 10),
    (rsbnum: 1; totalwords: 80; datawords: 50; ecnum: 15), (rsbnum: 4; totalwords: 81; datawords: 51; ecnum: 15),
    (rsbnum: 4; totalwords: 50; datawords: 22; ecnum: 14), (rsbnum: 4; totalwords: 51; datawords: 23; ecnum: 14),
    (rsbnum: 3; totalwords: 36; datawords: 12; ecnum: 12), (rsbnum: 8; totalwords: 37; datawords: 13; ecnum: 12),
    // version 12
    (rsbnum: 2; totalwords: 116; datawords: 92; ecnum: 12), (rsbnum: 2; totalwords: 117; datawords: 93; ecnum: 12),
    (rsbnum: 6; totalwords: 58; datawords: 36; ecnum: 11), (rsbnum: 2; totalwords: 59; datawords: 37; ecnum: 11),
    (rsbnum: 4; totalwords: 46; datawords: 20; ecnum: 13), (rsbnum: 6; totalwords: 47; datawords: 21; ecnum: 13),
    (rsbnum: 7; totalwords: 42; datawords: 14; ecnum: 14), (rsbnum: 4; totalwords: 43; datawords: 15; ecnum: 14),
    // version 13
    (rsbnum: 4; totalwords: 133; datawords: 107; ecnum: 13),
    (rsbnum: 8; totalwords: 59; datawords: 37; ecnum: 11), (rsbnum: 1; totalwords: 60; datawords: 38; ecnum: 11),
    (rsbnum: 8; totalwords: 44; datawords: 20; ecnum: 12), (rsbnum: 4; totalwords: 45; datawords: 21; ecnum: 12),
    (rsbnum: 12; totalwords: 33; datawords: 11; ecnum: 11), (rsbnum: 4; totalwords: 34; datawords: 12; ecnum: 11),
    // version 14
    (rsbnum: 3; totalwords: 145; datawords: 115; ecnum: 15), (rsbnum: 1; totalwords: 146; datawords: 116; ecnum: 15),
    (rsbnum: 4; totalwords: 64; datawords: 40; ecnum: 12), (rsbnum: 5; totalwords: 65; datawords: 41; ecnum: 12),
    (rsbnum: 11; totalwords: 36; datawords: 16; ecnum: 10), (rsbnum: 5; totalwords: 37; datawords: 17; ecnum: 10),
    (rsbnum: 11; totalwords: 36; datawords: 12; ecnum: 12), (rsbnum: 5; totalwords: 37; datawords: 13; ecnum: 12),
    // version 15
    (rsbnum: 5; totalwords: 109; datawords: 87; ecnum: 11), (rsbnum: 1; totalwords: 110; datawords: 88; ecnum: 11),
    (rsbnum: 5; totalwords: 65; datawords: 41; ecnum: 12), (rsbnum: 5; totalwords: 66; datawords: 42; ecnum: 12),
    (rsbnum: 5; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 7; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 11; totalwords: 36; datawords: 12; ecnum: 12), (rsbnum: 7; totalwords: 37; datawords: 13; ecnum: 12),
    // version 16
    (rsbnum: 5; totalwords: 122; datawords: 98; ecnum: 12), (rsbnum: 1; totalwords: 123; datawords: 99; ecnum: 12),
    (rsbnum: 7; totalwords: 73; datawords: 45; ecnum: 14), (rsbnum: 3; totalwords: 74; datawords: 46; ecnum: 14),
    (rsbnum: 15; totalwords: 43; datawords: 19; ecnum: 12), (rsbnum: 2; totalwords: 44; datawords: 20; ecnum: 12),
    (rsbnum: 3; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 13; totalwords: 46; datawords: 16; ecnum: 15),
    // version 17
    (rsbnum: 1; totalwords: 135; datawords: 107; ecnum: 14), (rsbnum: 5; totalwords: 136; datawords: 108; ecnum: 14),
    (rsbnum: 10; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 1; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 1; totalwords: 50; datawords: 22; ecnum: 14), (rsbnum: 15; totalwords: 51; datawords: 23; ecnum: 14),
    (rsbnum: 2; totalwords: 42; datawords: 14; ecnum: 14), (rsbnum: 17; totalwords: 43; datawords: 15; ecnum: 14),
    // version 18
    (rsbnum: 5; totalwords: 150; datawords: 120; ecnum: 15), (rsbnum: 1; totalwords: 151; datawords: 121; ecnum: 15),
    (rsbnum: 9; totalwords: 69; datawords: 43; ecnum: 13), (rsbnum: 4; totalwords: 70; datawords: 44; ecnum: 13),
    (rsbnum: 17; totalwords: 50; datawords: 22; ecnum: 14), (rsbnum: 1; totalwords: 51; datawords: 23; ecnum: 14),
    (rsbnum: 2; totalwords: 42; datawords: 14; ecnum: 14), (rsbnum: 19; totalwords: 43; datawords: 15; ecnum: 14),
    // version 19
    (rsbnum: 3; totalwords: 141; datawords: 113; ecnum: 14), (rsbnum: 4; totalwords: 142; datawords: 114; ecnum: 14),
    (rsbnum: 3; totalwords: 70; datawords: 44; ecnum: 13), (rsbnum: 11; totalwords: 71; datawords: 45; ecnum: 13),
    (rsbnum: 17; totalwords: 47; datawords: 21; ecnum: 13), (rsbnum: 4; totalwords: 48; datawords: 22; ecnum: 13),
    (rsbnum: 9; totalwords: 39; datawords: 13; ecnum: 13), (rsbnum: 16; totalwords: 40; datawords: 14; ecnum: 13),
    // version 20
    (rsbnum: 3; totalwords: 135; datawords: 107; ecnum: 14), (rsbnum: 5; totalwords: 136; datawords: 108; ecnum: 14),
    (rsbnum: 3; totalwords: 67; datawords: 41; ecnum: 13), (rsbnum: 13; totalwords: 68; datawords: 42; ecnum: 13),
    (rsbnum: 15; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 5; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 15; totalwords: 43; datawords: 15; ecnum: 14), (rsbnum: 10; totalwords: 44; datawords: 16; ecnum: 14),
    // version 21
    (rsbnum: 4; totalwords: 144; datawords: 116; ecnum: 14), (rsbnum: 4; totalwords: 145; datawords: 117; ecnum: 14),
    (rsbnum: 17; totalwords: 68; datawords: 42; ecnum: 13),
    (rsbnum: 17; totalwords: 50; datawords: 22; ecnum: 14), (rsbnum: 6; totalwords: 51; datawords: 23; ecnum: 14),
    (rsbnum: 19; totalwords: 46; datawords: 16; ecnum: 15), (rsbnum: 6; totalwords: 47; datawords: 17; ecnum: 15),
    // version 22
    (rsbnum: 2; totalwords: 139; datawords: 111; ecnum: 14), (rsbnum: 7; totalwords: 140; datawords: 112; ecnum: 14),
    (rsbnum: 17; totalwords: 74; datawords: 46; ecnum: 14),
    (rsbnum: 7; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 16; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 34; totalwords: 37; datawords: 13; ecnum: 13),
    // version 23
    (rsbnum: 4; totalwords: 151; datawords: 121; ecnum: 15), (rsbnum: 5; totalwords: 152; datawords: 122; ecnum: 15),
    (rsbnum: 4; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 14; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 11; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 14; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 16; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 14; totalwords: 46; datawords: 16; ecnum: 15),
    // version 24
    (rsbnum: 6; totalwords: 147; datawords: 117; ecnum: 15), (rsbnum: 4; totalwords: 148; datawords: 118; ecnum: 15),
    (rsbnum: 6; totalwords: 73; datawords: 45; ecnum: 14), (rsbnum: 14; totalwords: 74; datawords: 46; ecnum: 14),
    (rsbnum: 11; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 16; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 30; totalwords: 46; datawords: 16; ecnum: 15), (rsbnum: 2; totalwords: 47; datawords: 17; ecnum: 15),
    // version 25
    (rsbnum: 8; totalwords: 132; datawords: 106; ecnum: 13), (rsbnum: 4; totalwords: 133; datawords: 107; ecnum: 13),
    (rsbnum: 8; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 13; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 7; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 22; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 22; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 13; totalwords: 46; datawords: 16; ecnum: 15),
    // version 26
    (rsbnum: 10; totalwords: 142; datawords: 114; ecnum: 14), (rsbnum: 2; totalwords: 143; datawords: 115; ecnum: 14),
    (rsbnum: 19; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 4; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 28; totalwords: 50; datawords: 22; ecnum: 14), (rsbnum: 6; totalwords: 51; datawords: 23; ecnum: 14),
    (rsbnum: 33; totalwords: 46; datawords: 16; ecnum: 15), (rsbnum: 4; totalwords: 47; datawords: 17; ecnum: 15),
    // version 27
    (rsbnum: 8; totalwords: 152; datawords: 122; ecnum: 15), (rsbnum: 4; totalwords: 153; datawords: 123; ecnum: 15),
    (rsbnum: 22; totalwords: 73; datawords: 45; ecnum: 14), (rsbnum: 3; totalwords: 74; datawords: 46; ecnum: 14),
    (rsbnum: 8; totalwords: 53; datawords: 23; ecnum: 15), (rsbnum: 26; totalwords: 54; datawords: 24; ecnum: 15),
    (rsbnum: 12; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 28; totalwords: 46; datawords: 16; ecnum: 15),
    // version 28
    (rsbnum: 3; totalwords: 147; datawords: 117; ecnum: 15), (rsbnum: 10; totalwords: 148; datawords: 118; ecnum: 15),
    (rsbnum: 3; totalwords: 73; datawords: 45; ecnum: 14), (rsbnum: 23; totalwords: 74; datawords: 46; ecnum: 14),
    (rsbnum: 4; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 31; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 11; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 31; totalwords: 46; datawords: 16; ecnum: 15),
    // version 29
    (rsbnum: 7; totalwords: 146; datawords: 116; ecnum: 15), (rsbnum: 7; totalwords: 147; datawords: 117; ecnum: 15),
    (rsbnum: 21; totalwords: 73; datawords: 45; ecnum: 14), (rsbnum: 7; totalwords: 74; datawords: 46; ecnum: 14),
    (rsbnum: 1; totalwords: 53; datawords: 23; ecnum: 15), (rsbnum: 37; totalwords: 54; datawords: 24; ecnum: 15),
    (rsbnum: 19; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 26; totalwords: 46; datawords: 16; ecnum: 15),
    // version 30
    (rsbnum: 5; totalwords: 145; datawords: 115; ecnum: 15), (rsbnum: 10; totalwords: 146; datawords: 116; ecnum: 15),
    (rsbnum: 19; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 10; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 15; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 25; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 23; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 25; totalwords: 46; datawords: 16; ecnum: 15),
    // version 31
    (rsbnum: 13; totalwords: 145; datawords: 115; ecnum: 15), (rsbnum: 3; totalwords: 146; datawords: 116; ecnum: 15),
    (rsbnum: 2; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 29; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 42; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 1; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 23; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 28; totalwords: 46; datawords: 16; ecnum: 15),
    // version 32
    (rsbnum: 17; totalwords: 145; datawords: 115; ecnum: 15),
    (rsbnum: 10; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 23; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 10; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 35; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 19; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 35; totalwords: 46; datawords: 16; ecnum: 15),
    // version 33
    (rsbnum: 17; totalwords: 145; datawords: 115; ecnum: 15), (rsbnum: 1; totalwords: 146; datawords: 116; ecnum: 15),
    (rsbnum: 14; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 21; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 29; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 19; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 11; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 46; totalwords: 46; datawords: 16; ecnum: 15),
    // version 34
    (rsbnum: 13; totalwords: 145; datawords: 115; ecnum: 15), (rsbnum: 6; totalwords: 146; datawords: 116; ecnum: 15),
    (rsbnum: 14; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 23; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 44; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 7; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 59; totalwords: 46; datawords: 16; ecnum: 15), (rsbnum: 1; totalwords: 47; datawords: 17; ecnum: 15),
    // version 35
    (rsbnum: 12; totalwords: 151; datawords: 121; ecnum: 15), (rsbnum: 7; totalwords: 152; datawords: 122; ecnum: 15),
    (rsbnum: 12; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 26; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 39; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 14; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 22; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 41; totalwords: 46; datawords: 16; ecnum: 15),
    // version 36
    (rsbnum: 6; totalwords: 151; datawords: 121; ecnum: 15), (rsbnum: 14; totalwords: 152; datawords: 122; ecnum: 15),
    (rsbnum: 6; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 34; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 46; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 10; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 2; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 64; totalwords: 46; datawords: 16; ecnum: 15),
    // version 37
    (rsbnum: 17; totalwords: 152; datawords: 122; ecnum: 15), (rsbnum: 4; totalwords: 153; datawords: 123; ecnum: 15),
    (rsbnum: 29; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 14; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 49; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 10; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 24; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 46; totalwords: 46; datawords: 16; ecnum: 15),
    // version 38
    (rsbnum: 4; totalwords: 152; datawords: 122; ecnum: 15), (rsbnum: 18; totalwords: 153; datawords: 123; ecnum: 15),
    (rsbnum: 13; totalwords: 74; datawords: 46; ecnum: 14), (rsbnum: 32; totalwords: 75; datawords: 47; ecnum: 14),
    (rsbnum: 48; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 14; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 42; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 32; totalwords: 46; datawords: 16; ecnum: 15),
    // version 39
    (rsbnum: 20; totalwords: 147; datawords: 117; ecnum: 15), (rsbnum: 4; totalwords: 148; datawords: 118; ecnum: 15),
    (rsbnum: 40; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 7; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 43; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 22; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 10; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 67; totalwords: 46; datawords: 16; ecnum: 15),
    // version 40
    (rsbnum: 19; totalwords: 148; datawords: 118; ecnum: 15), (rsbnum: 6; totalwords: 149; datawords: 119; ecnum: 15),
    (rsbnum: 18; totalwords: 75; datawords: 47; ecnum: 14), (rsbnum: 31; totalwords: 76; datawords: 48; ecnum: 14),
    (rsbnum: 34; totalwords: 54; datawords: 24; ecnum: 15), (rsbnum: 34; totalwords: 55; datawords: 25; ecnum: 15),
    (rsbnum: 20; totalwords: 45; datawords: 15; ecnum: 15), (rsbnum: 61; totalwords: 46; datawords: 16; ecnum: 15)
  );

  nlens: array[0..2, 0..3] of Integer = (
    (10, 9, 8, 8), (12, 11, 16, 10), (14, 13, 16, 12)
  );

  aplocs: array[1..40, 0..6] of Integer = (
    (0,  0,  0,  0,   0,   0,   0),
    (6, 18,  0,  0,   0,   0,   0), (6, 22,  0,  0,   0,   0,   0),
    (6, 26,  0,  0,   0,   0,   0), (6, 30,  0,  0,   0,   0,   0),
    (6, 34,  0,  0,   0,   0,   0), (6, 22, 38,  0,   0,   0,   0),
    (6, 24, 42,  0,   0,   0,   0), (6, 26, 46,  0,   0,   0,   0),
    (6, 28, 50,  0,   0,   0,   0), (6, 30, 54,  0,   0,   0,   0),
    (6, 32, 58,  0,   0,   0,   0), (6, 34, 62,  0,   0,   0,   0),
    (6, 26, 46, 66,   0,   0,   0), (6, 26, 48, 70,   0,   0,   0),
    (6, 26, 50, 74,   0,   0,   0), (6, 30, 54, 78,   0,   0,   0),
    (6, 30, 56, 82,   0,   0,   0), (6, 30, 58, 86,   0,   0,   0),
    (6, 34, 62, 90,   0,   0,   0), (6, 28, 50, 72,  94,   0,   0),
    (6, 26, 50, 74,  98,   0,   0), (6, 30, 54, 78, 102,   0,   0),
    (6, 28, 54, 80, 106,   0,   0), (6, 32, 58, 84, 110,   0,   0),
    (6, 30, 58, 86, 114,   0,   0), (6, 34, 62, 90, 118,   0,   0),
    (6, 26, 50, 74,  98, 122,   0), (6, 30, 54, 78, 102, 126,   0),
    (6, 26, 52, 78, 104, 130,   0), (6, 30, 56, 82, 108, 134,   0),
    (6, 34, 60, 86, 112, 138,   0), (6, 30, 58, 86, 114, 142,   0),
    (6, 34, 62, 90, 118, 146,   0), (6, 30, 54, 78, 102, 126, 150),
    (6, 24, 50, 76, 102, 128, 154), (6, 28, 54, 80, 106, 132, 158),
    (6, 32, 58, 84, 110, 136, 162), (6, 26, 54, 82, 110, 138, 166),
    (6, 30, 58, 86, 114, 142, 170)
  );
var
  i, j, k: Integer;
  ecls: array[1..QR_VER_MAX, 0..QR_ECL_MAX - 1] of QR_ECLEVEL;
begin
  ZeroMemory(@ecls, SizeOf(ecls));
  for i := 1 to QR_VER_MAX do
  begin
    for j := 0 to (QR_ECL_MAX - 1) do
    begin
      for k := 0 to (QR_EM_MAX - 1) do
        ecls[i][j].capacity[k] := capacities[i][j][k];
    end;
  end;
  // version 1
  ecls[1][0].datawords := 19; ecls[1][0].nrsb := 1;
  ecls[1][0].rsb[0] := rsbs[0];
  ecls[1][1].datawords := 16; ecls[1][1].nrsb := 1;
  ecls[1][1].rsb[0] := rsbs[1];
  ecls[1][2].datawords := 13; ecls[1][2].nrsb := 1;
  ecls[1][2].rsb[0] := rsbs[2];
  ecls[1][3].datawords :=  9; ecls[1][3].nrsb := 1;
  ecls[1][3].rsb[0] := rsbs[3];
  // version 2
  ecls[2][0].datawords := 34; ecls[2][0].nrsb := 1;
  ecls[2][0].rsb[0] := rsbs[4];
  ecls[2][1].datawords := 28; ecls[2][1].nrsb := 1;
  ecls[2][1].rsb[0] := rsbs[5];
  ecls[2][2].datawords := 22; ecls[2][2].nrsb := 1;
  ecls[2][2].rsb[0] := rsbs[6];
  ecls[2][3].datawords := 16; ecls[2][3].nrsb := 1;
  ecls[2][3].rsb[0] := rsbs[7];
  // version 3
  ecls[3][0].datawords := 55; ecls[3][0].nrsb := 1;
  ecls[3][0].rsb[0] := rsbs[8];
  ecls[3][1].datawords := 44; ecls[3][1].nrsb := 1;
  ecls[3][1].rsb[0] := rsbs[9];
  ecls[3][2].datawords := 34; ecls[3][2].nrsb := 1;
  ecls[3][2].rsb[0] := rsbs[10];
  ecls[3][3].datawords := 26; ecls[3][3].nrsb := 1;
  ecls[3][3].rsb[0] := rsbs[11];
  // version 4
  ecls[4][0].datawords := 80; ecls[4][0].nrsb := 1;
  ecls[4][0].rsb[0] := rsbs[12];
  ecls[4][1].datawords := 64; ecls[4][1].nrsb := 1;
  ecls[4][1].rsb[0] := rsbs[13];
  ecls[4][2].datawords := 48; ecls[4][2].nrsb := 1;
  ecls[4][2].rsb[0] := rsbs[14];
  ecls[4][3].datawords := 36; ecls[4][3].nrsb := 1;
  ecls[4][3].rsb[0] := rsbs[15];
  // version 5
  ecls[5][0].datawords := 108; ecls[5][0].nrsb := 1;
  ecls[5][0].rsb[0] := rsbs[16];
  ecls[5][1].datawords := 86; ecls[5][1].nrsb := 1;
  ecls[5][1].rsb[0] := rsbs[17];
  ecls[5][2].datawords := 62; ecls[5][2].nrsb := 2;
  ecls[5][2].rsb[0] := rsbs[18]; ecls[5][2].rsb[1] := rsbs[19];
  ecls[5][3].datawords := 46; ecls[5][3].nrsb := 2;
  ecls[5][3].rsb[0] := rsbs[20]; ecls[5][3].rsb[1] := rsbs[21];
  // version 6
  ecls[6][0].datawords := 136; ecls[6][0].nrsb := 1;
  ecls[6][0].rsb[0] := rsbs[22];
  ecls[6][1].datawords := 108; ecls[6][1].nrsb := 1;
  ecls[6][1].rsb[0] := rsbs[23];
  ecls[6][2].datawords := 76; ecls[6][2].nrsb := 1;
  ecls[6][2].rsb[0] := rsbs[24];
  ecls[6][3].datawords := 60; ecls[6][3].nrsb := 1;
  ecls[6][3].rsb[0] := rsbs[25];
  // version 7
  ecls[7][0].datawords := 156; ecls[7][0].nrsb := 1;
  ecls[7][0].rsb[0] := rsbs[26];
  ecls[7][1].datawords := 124; ecls[7][1].nrsb := 1;
  ecls[7][1].rsb[0] := rsbs[27];
  ecls[7][2].datawords := 88; ecls[7][2].nrsb := 2;
  ecls[7][2].rsb[0] := rsbs[28]; ecls[7][2].rsb[1] := rsbs[29];
  ecls[7][3].datawords := 66; ecls[7][3].nrsb := 2;
  ecls[7][3].rsb[0] := rsbs[30]; ecls[7][3].rsb[1] := rsbs[31];
  // version 8
  ecls[8][0].datawords := 194; ecls[8][0].nrsb := 1;
  ecls[8][0].rsb[0] := rsbs[32];
  ecls[8][1].datawords := 154; ecls[8][1].nrsb := 2;
  ecls[8][1].rsb[0] := rsbs[33]; ecls[8][1].rsb[1] := rsbs[34];
  ecls[8][2].datawords := 110; ecls[8][2].nrsb := 2;
  ecls[8][2].rsb[0] := rsbs[35]; ecls[8][2].rsb[1] := rsbs[36];
  ecls[8][3].datawords := 86; ecls[8][3].nrsb := 2;
  ecls[8][3].rsb[0] := rsbs[37]; ecls[8][3].rsb[1] := rsbs[38];
  // version 9
  ecls[9][0].datawords := 232; ecls[9][0].nrsb := 1;
  ecls[9][0].rsb[0] := rsbs[39];
  ecls[9][1].datawords := 182; ecls[9][1].nrsb := 2;
  ecls[9][1].rsb[0] := rsbs[40]; ecls[9][1].rsb[1] := rsbs[41];
  ecls[9][2].datawords := 132; ecls[9][2].nrsb := 2;
  ecls[9][2].rsb[0] := rsbs[42]; ecls[9][2].rsb[1] := rsbs[43];
  ecls[9][3].datawords := 100; ecls[9][3].nrsb := 2;
  ecls[9][3].rsb[0] := rsbs[44]; ecls[9][3].rsb[1] := rsbs[45];
  // version 10
  ecls[10][0].datawords := 274; ecls[10][0].nrsb := 2;
  ecls[10][0].rsb[0] := rsbs[46]; ecls[10][0].rsb[1] := rsbs[47];
  ecls[10][1].datawords := 216; ecls[10][1].nrsb := 2;
  ecls[10][1].rsb[0] := rsbs[48]; ecls[10][1].rsb[1] := rsbs[49];
  ecls[10][2].datawords := 154; ecls[10][2].nrsb := 2;
  ecls[10][2].rsb[0] := rsbs[50]; ecls[10][2].rsb[1] := rsbs[51];
  ecls[10][3].datawords := 122; ecls[10][3].nrsb := 2;
  ecls[10][3].rsb[0] := rsbs[52]; ecls[10][3].rsb[1] := rsbs[53];
  // version 11
  ecls[11][0].datawords := 324; ecls[11][0].nrsb := 1;
  ecls[11][0].rsb[0] := rsbs[54];
  ecls[11][1].datawords := 254; ecls[11][1].nrsb := 2;
  ecls[11][1].rsb[0] := rsbs[55]; ecls[11][1].rsb[1] := rsbs[56];
  ecls[11][2].datawords := 180; ecls[11][2].nrsb := 2;
  ecls[11][2].rsb[0] := rsbs[57]; ecls[11][2].rsb[1] := rsbs[58];
  ecls[11][3].datawords := 140; ecls[11][3].nrsb := 2;
  ecls[11][3].rsb[0] := rsbs[59]; ecls[11][3].rsb[1] := rsbs[60];
  // version 12
  ecls[12][0].datawords := 370; ecls[12][0].nrsb := 2;
  ecls[12][0].rsb[0] := rsbs[61]; ecls[12][0].rsb[1] := rsbs[62];
  ecls[12][1].datawords := 290; ecls[12][1].nrsb := 2;
  ecls[12][1].rsb[0] := rsbs[63]; ecls[12][1].rsb[1] := rsbs[64];
  ecls[12][2].datawords := 206; ecls[12][2].nrsb := 2;
  ecls[12][2].rsb[0] := rsbs[65]; ecls[12][2].rsb[1] := rsbs[66];
  ecls[12][3].datawords := 158; ecls[12][3].nrsb := 2;
  ecls[12][3].rsb[0] := rsbs[67]; ecls[12][3].rsb[1] := rsbs[68];
  // version 13
  ecls[13][0].datawords := 428; ecls[13][0].nrsb := 1;
  ecls[13][0].rsb[0] := rsbs[69];
  ecls[13][1].datawords := 334; ecls[13][1].nrsb := 2;
  ecls[13][1].rsb[0] := rsbs[70]; ecls[13][1].rsb[1] := rsbs[71];
  ecls[13][2].datawords := 244; ecls[13][2].nrsb := 2;
  ecls[13][2].rsb[0] := rsbs[72]; ecls[13][2].rsb[1] := rsbs[73];
  ecls[13][3].datawords := 180; ecls[13][3].nrsb := 2;
  ecls[13][3].rsb[0] := rsbs[74]; ecls[13][3].rsb[1] := rsbs[75];
  // version 14
  ecls[14][0].datawords := 461; ecls[14][0].nrsb := 2;
  ecls[14][0].rsb[0] := rsbs[76]; ecls[14][0].rsb[1] := rsbs[77];
  ecls[14][1].datawords := 365; ecls[14][1].nrsb := 2;
  ecls[14][1].rsb[0] := rsbs[78]; ecls[14][1].rsb[1] := rsbs[79];
  ecls[14][2].datawords := 261; ecls[14][2].nrsb := 2;
  ecls[14][2].rsb[0] := rsbs[80]; ecls[14][2].rsb[1] := rsbs[81];
  ecls[14][3].datawords := 197; ecls[14][3].nrsb := 2;
  ecls[14][3].rsb[0] := rsbs[82]; ecls[14][3].rsb[1] := rsbs[83];
  // version 15
  ecls[15][0].datawords := 523; ecls[15][0].nrsb := 2;
  ecls[15][0].rsb[0] := rsbs[84]; ecls[15][0].rsb[1] := rsbs[85];
  ecls[15][1].datawords := 415; ecls[15][1].nrsb := 2;
  ecls[15][1].rsb[0] := rsbs[86]; ecls[15][1].rsb[1] := rsbs[87];
  ecls[15][2].datawords := 295; ecls[15][2].nrsb := 2;
  ecls[15][2].rsb[0] := rsbs[88]; ecls[15][2].rsb[1] := rsbs[89];
  ecls[15][3].datawords := 223; ecls[15][3].nrsb := 2;
  ecls[15][3].rsb[0] := rsbs[90]; ecls[15][3].rsb[1] := rsbs[91];
  // version 16
  ecls[16][0].datawords := 589; ecls[16][0].nrsb := 2;
  ecls[16][0].rsb[0] := rsbs[92]; ecls[16][0].rsb[1] := rsbs[93];
  ecls[16][1].datawords := 453; ecls[16][1].nrsb := 2;
  ecls[16][1].rsb[0] := rsbs[94]; ecls[16][1].rsb[1] := rsbs[95];
  ecls[16][2].datawords := 325; ecls[16][2].nrsb := 2;
  ecls[16][2].rsb[0] := rsbs[96]; ecls[16][2].rsb[1] := rsbs[97];
  ecls[16][3].datawords := 253; ecls[16][3].nrsb := 2;
  ecls[16][3].rsb[0] := rsbs[98]; ecls[16][3].rsb[1] := rsbs[99];
  // version 17
  ecls[17][0].datawords := 647; ecls[17][0].nrsb := 2;
  ecls[17][0].rsb[0] := rsbs[100]; ecls[17][0].rsb[1] := rsbs[101];
  ecls[17][1].datawords := 507; ecls[17][1].nrsb := 2;
  ecls[17][1].rsb[0] := rsbs[102]; ecls[17][1].rsb[1] := rsbs[103];
  ecls[17][2].datawords := 367; ecls[17][2].nrsb := 2;
  ecls[17][2].rsb[0] := rsbs[104]; ecls[17][2].rsb[1] := rsbs[105];
  ecls[17][3].datawords := 283; ecls[17][3].nrsb := 2;
  ecls[17][3].rsb[0] := rsbs[106]; ecls[17][3].rsb[1] := rsbs[107];
  // version 18
  ecls[18][0].datawords := 721; ecls[18][0].nrsb := 2;
  ecls[18][0].rsb[0] := rsbs[108]; ecls[18][0].rsb[1] := rsbs[109];
  ecls[18][1].datawords := 563; ecls[18][1].nrsb := 2;
  ecls[18][1].rsb[0] := rsbs[110]; ecls[18][1].rsb[1] := rsbs[111];
  ecls[18][2].datawords := 397; ecls[18][2].nrsb := 2;
  ecls[18][2].rsb[0] := rsbs[112]; ecls[18][2].rsb[1] := rsbs[113];
  ecls[18][3].datawords := 313; ecls[18][3].nrsb := 2;
  ecls[18][3].rsb[0] := rsbs[114]; ecls[18][3].rsb[1] := rsbs[115];
  // version 19
  ecls[19][0].datawords := 795; ecls[19][0].nrsb := 2;
  ecls[19][0].rsb[0] := rsbs[116]; ecls[19][0].rsb[1] := rsbs[117];
  ecls[19][1].datawords := 627; ecls[19][1].nrsb := 2;
  ecls[19][1].rsb[0] := rsbs[118]; ecls[19][1].rsb[1] := rsbs[119];
  ecls[19][2].datawords := 445; ecls[19][2].nrsb := 2;
  ecls[19][2].rsb[0] := rsbs[120]; ecls[19][2].rsb[1] := rsbs[121];
  ecls[19][3].datawords := 341; ecls[19][3].nrsb := 2;
  ecls[19][3].rsb[0] := rsbs[122]; ecls[19][3].rsb[1] := rsbs[123];
  // version 20
  ecls[20][0].datawords := 861; ecls[20][0].nrsb := 2;
  ecls[20][0].rsb[0] := rsbs[124]; ecls[20][0].rsb[1] := rsbs[125];
  ecls[20][1].datawords := 669; ecls[20][1].nrsb := 2;
  ecls[20][1].rsb[0] := rsbs[126]; ecls[20][1].rsb[1] := rsbs[127];
  ecls[20][2].datawords := 485; ecls[20][2].nrsb := 2;
  ecls[20][2].rsb[0] := rsbs[128]; ecls[20][2].rsb[1] := rsbs[129];
  ecls[20][3].datawords := 385; ecls[20][3].nrsb := 2;
  ecls[20][3].rsb[0] := rsbs[130]; ecls[20][3].rsb[1] := rsbs[131];
  // version 21
  ecls[21][0].datawords := 932; ecls[21][0].nrsb := 2;
  ecls[21][0].rsb[0] := rsbs[132]; ecls[21][0].rsb[1] := rsbs[133];
  ecls[21][1].datawords := 714; ecls[21][1].nrsb := 1;
  ecls[21][1].rsb[0] := rsbs[134];
  ecls[21][2].datawords := 512; ecls[21][2].nrsb := 2;
  ecls[21][2].rsb[0] := rsbs[135]; ecls[21][2].rsb[1] := rsbs[136];
  ecls[21][3].datawords := 406; ecls[21][3].nrsb := 2;
  ecls[21][3].rsb[0] := rsbs[137]; ecls[21][3].rsb[1] := rsbs[138];
  // version 22
  ecls[22][0].datawords := 1006; ecls[22][0].nrsb := 2;
  ecls[22][0].rsb[0] := rsbs[139]; ecls[22][0].rsb[1] := rsbs[140];
  ecls[22][1].datawords := 782; ecls[22][1].nrsb := 1;
  ecls[22][1].rsb[0] := rsbs[141];
  ecls[22][2].datawords := 568; ecls[22][2].nrsb := 2;
  ecls[22][2].rsb[0] := rsbs[142]; ecls[22][2].rsb[1] := rsbs[143];
  ecls[22][3].datawords := 442; ecls[22][3].nrsb := 1;
  ecls[22][3].rsb[0] := rsbs[144];
  // version 23
  ecls[23][0].datawords := 1094; ecls[23][0].nrsb := 2;
  ecls[23][0].rsb[0] := rsbs[145]; ecls[23][0].rsb[1] := rsbs[146];
  ecls[23][1].datawords := 860; ecls[23][1].nrsb := 2;
  ecls[23][1].rsb[0] := rsbs[147]; ecls[23][1].rsb[1] := rsbs[148];
  ecls[23][2].datawords := 614; ecls[23][2].nrsb := 2;
  ecls[23][2].rsb[0] := rsbs[149]; ecls[23][2].rsb[1] := rsbs[150];
  ecls[23][3].datawords := 464; ecls[23][3].nrsb := 2;
  ecls[23][3].rsb[0] := rsbs[151]; ecls[23][3].rsb[1] := rsbs[152];
  // version 24
  ecls[24][0].datawords := 1174; ecls[24][0].nrsb := 2;
  ecls[24][0].rsb[0] := rsbs[153]; ecls[24][0].rsb[1] := rsbs[154];
  ecls[24][1].datawords := 914; ecls[24][1].nrsb := 2;
  ecls[24][1].rsb[0] := rsbs[155]; ecls[24][1].rsb[1] := rsbs[156];
  ecls[24][2].datawords := 664; ecls[24][2].nrsb := 2;
  ecls[24][2].rsb[0] := rsbs[157]; ecls[24][2].rsb[1] := rsbs[158];
  ecls[24][3].datawords := 514; ecls[24][3].nrsb := 2;
  ecls[24][3].rsb[0] := rsbs[159]; ecls[24][3].rsb[1] := rsbs[160];
  // version 25
  ecls[25][0].datawords := 1276; ecls[25][0].nrsb := 2;
  ecls[25][0].rsb[0] := rsbs[161]; ecls[25][0].rsb[1] := rsbs[162];
  ecls[25][1].datawords := 1000; ecls[25][1].nrsb := 2;
  ecls[25][1].rsb[0] := rsbs[163]; ecls[25][1].rsb[1] := rsbs[164];
  ecls[25][2].datawords := 718; ecls[25][2].nrsb := 2;
  ecls[25][2].rsb[0] := rsbs[165]; ecls[25][2].rsb[1] := rsbs[166];
  ecls[25][3].datawords := 538; ecls[25][3].nrsb := 2;
  ecls[25][3].rsb[0] := rsbs[167]; ecls[25][3].rsb[1] := rsbs[168];
  // version 26
  ecls[26][0].datawords := 1370; ecls[26][0].nrsb := 2;
  ecls[26][0].rsb[0] := rsbs[169]; ecls[26][0].rsb[1] := rsbs[170];
  ecls[26][1].datawords := 1062; ecls[26][1].nrsb := 2;
  ecls[26][1].rsb[0] := rsbs[171]; ecls[26][1].rsb[1] := rsbs[172];
  ecls[26][2].datawords := 754; ecls[26][2].nrsb := 2;
  ecls[26][2].rsb[0] := rsbs[173]; ecls[26][2].rsb[1] := rsbs[174];
  ecls[26][3].datawords := 596; ecls[26][3].nrsb := 2;
  ecls[26][3].rsb[0] := rsbs[175]; ecls[26][3].rsb[1] := rsbs[176];
  // version 27
  ecls[27][0].datawords := 1468; ecls[27][0].nrsb := 2;
  ecls[27][0].rsb[0] := rsbs[177]; ecls[27][0].rsb[1] := rsbs[178];
  ecls[27][1].datawords := 1128; ecls[27][1].nrsb := 2;
  ecls[27][1].rsb[0] := rsbs[179]; ecls[27][1].rsb[1] := rsbs[180];
  ecls[27][2].datawords := 808; ecls[27][2].nrsb := 2;
  ecls[27][2].rsb[0] := rsbs[181]; ecls[27][2].rsb[1] := rsbs[182];
  ecls[27][3].datawords := 628; ecls[27][3].nrsb := 2;
  ecls[27][3].rsb[0] := rsbs[183]; ecls[27][3].rsb[1] := rsbs[184];
  // version 28
  ecls[28][0].datawords := 1531; ecls[28][0].nrsb := 2;
  ecls[28][0].rsb[0] := rsbs[185]; ecls[28][0].rsb[1] := rsbs[186];
  ecls[28][1].datawords := 1193; ecls[28][1].nrsb := 2;
  ecls[28][1].rsb[0] := rsbs[187]; ecls[28][1].rsb[1] := rsbs[188];
  ecls[28][2].datawords := 871; ecls[28][2].nrsb := 2;
  ecls[28][2].rsb[0] := rsbs[189]; ecls[28][2].rsb[1] := rsbs[190];
  ecls[28][3].datawords := 661; ecls[28][3].nrsb := 2;
  ecls[28][3].rsb[0] := rsbs[191]; ecls[28][3].rsb[1] := rsbs[192];
  // version 29
  ecls[29][0].datawords := 1631; ecls[29][0].nrsb := 2;
  ecls[29][0].rsb[0] := rsbs[193]; ecls[29][0].rsb[1] := rsbs[194];
  ecls[29][1].datawords := 1267; ecls[29][1].nrsb := 2;
  ecls[29][1].rsb[0] := rsbs[195]; ecls[29][1].rsb[1] := rsbs[196];
  ecls[29][2].datawords := 911; ecls[29][2].nrsb := 2;
  ecls[29][2].rsb[0] := rsbs[197]; ecls[29][2].rsb[1] := rsbs[198];
  ecls[29][3].datawords := 701; ecls[29][3].nrsb := 2;
  ecls[29][3].rsb[0] := rsbs[199]; ecls[29][3].rsb[1] := rsbs[200];
  // version 30
  ecls[30][0].datawords := 1735; ecls[30][0].nrsb := 2;
  ecls[30][0].rsb[0] := rsbs[201]; ecls[30][0].rsb[1] := rsbs[202];
  ecls[30][1].datawords := 1373; ecls[30][1].nrsb := 2;
  ecls[30][1].rsb[0] := rsbs[203]; ecls[30][1].rsb[1] := rsbs[204];
  ecls[30][2].datawords := 985; ecls[30][2].nrsb := 2;
  ecls[30][2].rsb[0] := rsbs[205]; ecls[30][2].rsb[1] := rsbs[206];
  ecls[30][3].datawords := 745; ecls[30][3].nrsb := 2;
  ecls[30][3].rsb[0] := rsbs[207]; ecls[30][3].rsb[1] := rsbs[208];
  // version 31
  ecls[31][0].datawords := 1843; ecls[31][0].nrsb := 2;
  ecls[31][0].rsb[0] := rsbs[209]; ecls[31][0].rsb[1] := rsbs[210];
  ecls[31][1].datawords := 1455; ecls[31][1].nrsb := 2;
  ecls[31][1].rsb[0] := rsbs[211]; ecls[31][1].rsb[1] := rsbs[212];
  ecls[31][2].datawords := 1033; ecls[31][2].nrsb := 2;
  ecls[31][2].rsb[0] := rsbs[213]; ecls[31][2].rsb[1] := rsbs[214];
  ecls[31][3].datawords := 793; ecls[31][3].nrsb := 2;
  ecls[31][3].rsb[0] := rsbs[215]; ecls[31][3].rsb[1] := rsbs[216];
  // version 32
  ecls[32][0].datawords := 1955; ecls[32][0].nrsb := 1;
  ecls[32][0].rsb[0] := rsbs[217];
  ecls[32][1].datawords := 1541; ecls[32][1].nrsb := 2;
  ecls[32][1].rsb[0] := rsbs[218]; ecls[32][1].rsb[1] := rsbs[219];
  ecls[32][2].datawords := 1115; ecls[32][2].nrsb := 2;
  ecls[32][2].rsb[0] := rsbs[220]; ecls[32][2].rsb[1] := rsbs[221];
  ecls[32][3].datawords := 845; ecls[32][3].nrsb := 2;
  ecls[32][3].rsb[0] := rsbs[222]; ecls[32][3].rsb[1] := rsbs[223];
  // version 33
  ecls[33][0].datawords := 2071; ecls[33][0].nrsb := 2;
  ecls[33][0].rsb[0] := rsbs[224]; ecls[33][0].rsb[1] := rsbs[225];
  ecls[33][1].datawords := 1631; ecls[33][1].nrsb := 2;
  ecls[33][1].rsb[0] := rsbs[226]; ecls[33][1].rsb[1] := rsbs[227];
  ecls[33][2].datawords := 1171; ecls[33][2].nrsb := 2;
  ecls[33][2].rsb[0] := rsbs[228]; ecls[33][2].rsb[1] := rsbs[229];
  ecls[33][3].datawords := 901; ecls[33][3].nrsb := 2;
  ecls[33][3].rsb[0] := rsbs[230]; ecls[33][3].rsb[1] := rsbs[231];
  // version 34
  ecls[34][0].datawords := 2191; ecls[34][0].nrsb := 2;
  ecls[34][0].rsb[0] := rsbs[232]; ecls[34][0].rsb[1] := rsbs[233];
  ecls[34][1].datawords := 1725; ecls[34][1].nrsb := 2;
  ecls[34][1].rsb[0] := rsbs[234]; ecls[34][1].rsb[1] := rsbs[235];
  ecls[34][2].datawords := 1231; ecls[34][2].nrsb := 2;
  ecls[34][2].rsb[0] := rsbs[236]; ecls[34][2].rsb[1] := rsbs[237];
  ecls[34][3].datawords := 961; ecls[34][3].nrsb := 2;
  ecls[34][3].rsb[0] := rsbs[238]; ecls[34][3].rsb[1] := rsbs[239];
  // version 35
  ecls[35][0].datawords := 2306; ecls[35][0].nrsb := 2;
  ecls[35][0].rsb[0] := rsbs[240]; ecls[35][0].rsb[1] := rsbs[241];
  ecls[35][1].datawords := 1812; ecls[35][1].nrsb := 2;
  ecls[35][1].rsb[0] := rsbs[242]; ecls[35][1].rsb[1] := rsbs[243];
  ecls[35][2].datawords := 1286; ecls[35][2].nrsb := 2;
  ecls[35][2].rsb[0] := rsbs[244]; ecls[35][2].rsb[1] := rsbs[245];
  ecls[35][3].datawords := 986; ecls[35][3].nrsb := 2;
  ecls[35][3].rsb[0] := rsbs[246]; ecls[35][3].rsb[1] := rsbs[247];
  // version 36
  ecls[36][0].datawords := 2434; ecls[36][0].nrsb := 2;
  ecls[36][0].rsb[0] := rsbs[248]; ecls[36][0].rsb[1] := rsbs[249];
  ecls[36][1].datawords := 1914; ecls[36][1].nrsb := 2;
  ecls[36][1].rsb[0] := rsbs[250]; ecls[36][1].rsb[1] := rsbs[251];
  ecls[36][2].datawords := 1354; ecls[36][2].nrsb := 2;
  ecls[36][2].rsb[0] := rsbs[252]; ecls[36][2].rsb[1] := rsbs[253];
  ecls[36][3].datawords := 1054; ecls[36][3].nrsb := 2;
  ecls[36][3].rsb[0] := rsbs[254]; ecls[36][3].rsb[1] := rsbs[255];
  // version 37
  ecls[37][0].datawords := 2566; ecls[37][0].nrsb := 2;
  ecls[37][0].rsb[0] := rsbs[256]; ecls[37][0].rsb[1] := rsbs[257];
  ecls[37][1].datawords := 1992; ecls[37][1].nrsb := 2;
  ecls[37][1].rsb[0] := rsbs[258]; ecls[37][1].rsb[1] := rsbs[259];
  ecls[37][2].datawords := 1426; ecls[37][2].nrsb := 2;
  ecls[37][2].rsb[0] := rsbs[260]; ecls[37][2].rsb[1] := rsbs[261];
  ecls[37][3].datawords := 1096; ecls[37][3].nrsb := 2;
  ecls[37][3].rsb[0] := rsbs[262]; ecls[37][3].rsb[1] := rsbs[263];
  // version 38
  ecls[38][0].datawords := 2702; ecls[38][0].nrsb := 2;
  ecls[38][0].rsb[0] := rsbs[264]; ecls[38][0].rsb[1] := rsbs[265];
  ecls[38][1].datawords := 2102; ecls[38][1].nrsb := 2;
  ecls[38][1].rsb[0] := rsbs[266]; ecls[38][1].rsb[1] := rsbs[267];
  ecls[38][2].datawords := 1502; ecls[38][2].nrsb := 2;
  ecls[38][2].rsb[0] := rsbs[268]; ecls[38][2].rsb[1] := rsbs[269];
  ecls[38][3].datawords := 1142; ecls[38][3].nrsb := 2;
  ecls[38][3].rsb[0] := rsbs[270]; ecls[38][3].rsb[1] := rsbs[271];
  // version 39
  ecls[39][0].datawords := 2812; ecls[39][0].nrsb := 2;
  ecls[39][0].rsb[0] := rsbs[272]; ecls[39][0].rsb[1] := rsbs[273];
  ecls[39][1].datawords := 2216; ecls[39][1].nrsb := 2;
  ecls[39][1].rsb[0] := rsbs[274]; ecls[39][1].rsb[1] := rsbs[275];
  ecls[39][2].datawords := 1582; ecls[39][2].nrsb := 2;
  ecls[39][2].rsb[0] := rsbs[276]; ecls[39][2].rsb[1] := rsbs[277];
  ecls[39][3].datawords := 1222; ecls[39][3].nrsb := 2;
  ecls[39][3].rsb[0] := rsbs[278]; ecls[39][3].rsb[1] := rsbs[279];
  // version 40
  ecls[40][0].datawords := 2956; ecls[40][0].nrsb := 2;
  ecls[40][0].rsb[0] := rsbs[280]; ecls[40][0].rsb[1] := rsbs[281];
  ecls[40][1].datawords := 2334; ecls[40][1].nrsb := 2;
  ecls[40][1].rsb[0] := rsbs[282]; ecls[40][1].rsb[1] := rsbs[283];
  ecls[40][2].datawords := 1666; ecls[40][2].nrsb := 2;
  ecls[40][2].rsb[0] := rsbs[284]; ecls[40][2].rsb[1] := rsbs[285];
  ecls[40][3].datawords := 1276; ecls[40][3].nrsb := 2;
  ecls[40][3].rsb[0] := rsbs[286]; ecls[40][3].rsb[1] := rsbs[287];

  ZeroMemory(@vertable, SizeOf(vertable));
  k := 0;
  for i := 1 to QR_VER_MAX do
  begin
    vertable[i].version := i;
    if i in [10, 27] then
      Inc(k);
    for j := 0 to (QR_EM_MAX  - 1) do
      vertable[i].nlen[j] := nlens[k][j];
    for j := 0 to (QR_ECL_MAX  - 1) do
      vertable[i].ecl[j] := ecls[i][j];
    for j := 0 to (QR_APL_MAX  - 1) do
      vertable[i].aploc[j] := aplocs[i][j];
  end;
  // version 1
  vertable[1].dimension := 21;
  vertable[1].totalwords := 26;
  vertable[1].remainedbits := 0;
  vertable[1].aplnum := 0;
  // version 2
  vertable[2].dimension := 25;
  vertable[2].totalwords := 44;
  vertable[2].remainedbits := 7;
  vertable[2].aplnum := 2;
  // version 3
  vertable[3].dimension := 29;
  vertable[3].totalwords := 70;
  vertable[3].remainedbits := 7;
  vertable[3].aplnum := 2;
  // version 4
  vertable[4].dimension := 33;
  vertable[4].totalwords := 100;
  vertable[4].remainedbits := 7;
  vertable[4].aplnum := 2;
  // version 5
  vertable[5].dimension := 37;
  vertable[5].totalwords := 134;
  vertable[5].remainedbits := 7;
  vertable[5].aplnum := 2;
  // version 6
  vertable[6].dimension := 41;
  vertable[6].totalwords := 172;
  vertable[6].remainedbits := 7;
  vertable[6].aplnum := 2;
  // version 7
  vertable[7].dimension := 45;
  vertable[7].totalwords := 196;
  vertable[7].remainedbits := 0;
  vertable[7].aplnum := 3;
  // version 8
  vertable[8].dimension := 49;
  vertable[8].totalwords := 242;
  vertable[8].remainedbits := 0;
  vertable[8].aplnum := 3;
  // version 9
  vertable[9].dimension := 53;
  vertable[9].totalwords := 292;
  vertable[9].remainedbits := 0;
  vertable[9].aplnum := 3;
  // version 10
  vertable[10].dimension := 57;
  vertable[10].totalwords := 346;
  vertable[10].remainedbits := 0;
  vertable[10].aplnum := 3;
  // version 11
  vertable[11].dimension := 61;
  vertable[11].totalwords := 404;
  vertable[11].remainedbits := 0;
  vertable[11].aplnum := 3;
  // version 12
  vertable[12].dimension := 65;
  vertable[12].totalwords := 466;
  vertable[12].remainedbits := 0;
  vertable[12].aplnum := 3;
  // version 13
  vertable[13].dimension := 69;
  vertable[13].totalwords := 532;
  vertable[13].remainedbits := 0;
  vertable[13].aplnum := 3;
  // version 14
  vertable[14].dimension := 73;
  vertable[14].totalwords := 581;
  vertable[14].remainedbits := 3;
  vertable[14].aplnum := 4;
  // version 15
  vertable[15].dimension := 77;
  vertable[15].totalwords := 655;
  vertable[15].remainedbits := 3;
  vertable[15].aplnum := 4;
  // version 16
  vertable[16].dimension := 81;
  vertable[16].totalwords := 733;
  vertable[16].remainedbits := 3;
  vertable[16].aplnum := 4;
  // version 17
  vertable[17].dimension := 85;
  vertable[17].totalwords := 815;
  vertable[17].remainedbits := 3;
  vertable[17].aplnum := 4;
  // version 18
  vertable[18].dimension := 89;
  vertable[18].totalwords := 901;
  vertable[18].remainedbits := 3;
  vertable[18].aplnum := 4;
  // version 19
  vertable[19].dimension := 93;
  vertable[19].totalwords := 991;
  vertable[19].remainedbits := 3;
  vertable[19].aplnum := 4;
  // version 20
  vertable[20].dimension := 97;
  vertable[20].totalwords := 1085;
  vertable[20].remainedbits := 3;
  vertable[20].aplnum := 4;
  // version 21
  vertable[21].dimension := 101;
  vertable[21].totalwords := 1156;
  vertable[21].remainedbits := 4;
  vertable[21].aplnum := 5;
  // version 22
  vertable[22].dimension := 105;
  vertable[22].totalwords := 1258;
  vertable[22].remainedbits := 4;
  vertable[22].aplnum := 5;
  // version 23
  vertable[23].dimension := 109;
  vertable[23].totalwords := 1364;
  vertable[23].remainedbits := 4;
  vertable[23].aplnum := 5;
  // version 24
  vertable[24].dimension := 113;
  vertable[24].totalwords := 1474;
  vertable[24].remainedbits := 4;
  vertable[24].aplnum := 5;
  // version 25
  vertable[25].dimension := 117;
  vertable[25].totalwords := 1588;
  vertable[25].remainedbits := 4;
  vertable[25].aplnum := 5;
  // version 26
  vertable[26].dimension := 121;
  vertable[26].totalwords := 1706;
  vertable[26].remainedbits := 4;
  vertable[26].aplnum := 5;
  // version 27
  vertable[27].dimension := 125;
  vertable[27].totalwords := 1828;
  vertable[27].remainedbits := 4;
  vertable[27].aplnum := 5;
  // version 28
  vertable[28].dimension := 129;
  vertable[28].totalwords := 1921;
  vertable[28].remainedbits := 3;
  vertable[28].aplnum := 6;
  // version 29
  vertable[29].dimension := 133;
  vertable[29].totalwords := 2051;
  vertable[29].remainedbits := 3;
  vertable[29].aplnum := 6;
  // version 30
  vertable[30].dimension := 137;
  vertable[30].totalwords := 2185;
  vertable[30].remainedbits := 3;
  vertable[30].aplnum := 6;
  // version 31
  vertable[31].dimension := 141;
  vertable[31].totalwords := 2323;
  vertable[31].remainedbits := 3;
  vertable[31].aplnum := 6;
  // version 32
  vertable[32].dimension := 145;
  vertable[32].totalwords := 2465;
  vertable[32].remainedbits := 3;
  vertable[32].aplnum := 6;
  // version 33
  vertable[33].dimension := 149;
  vertable[33].totalwords := 2611;
  vertable[33].remainedbits := 3;
  vertable[33].aplnum := 6;
  // version 34
  vertable[34].dimension := 153;
  vertable[34].totalwords := 2761;
  vertable[34].remainedbits := 3;
  vertable[34].aplnum := 6;
  // version 35
  vertable[35].dimension := 157;
  vertable[35].totalwords := 2876;
  vertable[35].remainedbits := 0;
  vertable[35].aplnum := 7;
  // version 36
  vertable[36].dimension := 161;
  vertable[36].totalwords := 3034;
  vertable[36].remainedbits := 0;
  vertable[36].aplnum := 7;
  // version 37
  vertable[37].dimension := 165;
  vertable[37].totalwords := 3196;
  vertable[37].remainedbits := 0;
  vertable[37].aplnum := 7;
  // version 38
  vertable[38].dimension := 169;
  vertable[38].totalwords := 3362;
  vertable[38].remainedbits := 0;
  vertable[38].aplnum := 7;
  // version 39
  vertable[39].dimension := 173;
  vertable[39].totalwords := 3532;
  vertable[39].remainedbits := 0;
  vertable[39].aplnum := 7;
  // version 40
  vertable[40].dimension := 177;
  vertable[40].totalwords := 3706;
  vertable[40].remainedbits := 0;
  vertable[40].aplnum := 7;
end;

function TQRCode.isBlack(i, j: Integer): Boolean;
begin
  Result := ((symbol[i][j] and QR_MM_BLACK) <> 0);
end;

function TQRCode.isData(i, j: Integer): Boolean;
begin
  Result := ((symbol[i][j] and QR_MM_DATA) <> 0);
end;

function TQRCode.isFunc(i, j: Integer): Boolean;
begin
  Result := ((symbol[i][j] and QR_MM_FUNC) <> 0);
end;

procedure TQRCode.PaintSymbol;
begin
  if Assigned(FOnPaintSymbol) then
    FOnPaintSymbol(Self, FWatch);
end;

procedure TQRCode.PaintedSymbol;
begin
  if Assigned(FOnPaintedSymbol) then
    FOnPaintedSymbol(Self, FWatch);
end;

procedure TQRCode.PaintSymbolCode;
var
  x, y: Integer;
  sl, st: Integer;
  sll, stt: Integer;
  OrgFont: TFont;
  CmtUp: String;
  CmtDown: String;
begin
  Clear;
  if AutoVersion then
  FVersion:=GetVersion;
  Width:=SymbolWidth;
  Height:=SymbolHeight;
  if FSymbolEnabled = False then
    Exit;

  FSymbolDisped := False;
  CheckOffset;
  CheckParity;
  icount := 1;

  PaintSymbol;


  sll := FSymbolLeft;
  stt := FSymbolTop;
  if FMatch = False then
  begin

  end;

  OrgFont := Canvas.Font;
  Canvas.Font := FComFont;
  sl := FSymbolLeft;
  st := FSymbolTop;
  CmtUp := FCommentUp;
  CmtDown := FCommentDown;
  while icount <= FCount do
  begin
    FSymbolDisped := False;
    x := (icount - 1) mod FColumn;
    y := (icount - 1) div FColumn;
    FSymbolLeft := sl + SymbolWidthS * x;
    FSymbolTop := st + SymbolHeightS * y;
    if (FCount > 1) and (FNumbering in [nbrHead, nbrTail, nbrIfVoid]) then
    begin
      if FNumbering = nbrHead then
      begin
        if CmtUp = '' then
          FCommentUp := IntToStr(icount)
        else
          FCommentUp := IntToStr(icount) + ' ' + CmtUp;
        if CmtDown = '' then
          FCommentDown := IntToStr(icount)
        else
          FCommentDown := IntToStr(icount) + ' ' + CmtDown;
      end
      else if FNumbering = nbrTail then
      begin
        if CmtUp = '' then
          FCommentUp := IntToStr(icount)
        else
          FCommentUp := CmtUp + ' ' + IntToStr(icount);
        if CmtDown = '' then
          FCommentDown := IntToStr(icount)
        else
          FCommentDown := CmtDown + ' ' + IntToStr(icount);
      end
      else if FNumbering = nbrIfVoid then
      begin
        if CmtUp = '' then
          FCommentUp := IntToStr(icount);
        if CmtDown = '' then
          FCommentDown := IntToStr(icount);
      end;
    end;
    srclen := offsets[icount] - offsets[icount - 1];
    if srclen > QR_SRC_MAX then
      Break;
    CopyMemory(@source, @FMemory[offsets[icount - 1]], srclen);

      PaintSymbolCodeB;
    if FSymbolDisped = False then
      Break;
    Inc(icount);
  end;
  FCommentDown := CmtDown;
  FCommentUp := CmtUp;
  FSymbolTop := stt;
  FSymbolLeft := sll;
  Canvas.Font := OrgFont;


  PaintedSymbol;

  if (FSymbolDisped = False) and (FClearOption = True) then
  begin
    if FSymbolDebug = False then
      Clear;
  end;
end;

procedure TQRCode.PaintSymbolCodeB;
var
  Done: Integer;
  lx, ly, rx, ry: Integer;
  x, y: Integer;
  inBlack: Boolean;
  SX, SY: Integer;
  dim: Integer;
  CmtUpWidth, CmtUpHeight: Integer;
  CmtDownWidth, CmtDownHeight: Integer;
  PositionUp, PositionDown: Integer;
  UpLimit, DownLimit: Integer;
begin
  if FEmode = -1 then
    Done := qrEncodeDataWordA
  else
    Done := qrEncodeDataWordM;

  if Done = -1 then
    Exit;

  qrComputeECWord;
  qrMakeCodeWord;
  qrFillFunctionPattern;
  qrFillCodeWord;
  qrSelectMaskPattern;
  qrFillFormatInfo;

  if SymbolDebug = True then
  begin
    FSymbolDisped := True;
    Exit;
  end;

    if FCommentUp <> '' then
  begin
    CmtUpWidth := Canvas.TextWidth(FCommentUp);
    CmtUpHeight := Canvas.TextHeight(FCommentUp);
  end
  else
  begin
    CmtUpWidth := 0;
    CmtUpHeight := 0;
  end;

  if FCommentDown <> '' then
  begin
    CmtDownWidth := Canvas.TextWidth(FCommentDown);
    CmtDownHeight := Canvas.TextHeight(FCommentDown);
  end
  else
  begin
    CmtDownWidth := 0;
    CmtDownHeight := 0;
  end;

  if (FMatch = True) and (icount = 1) then
  begin
    Width := FSymbolLeft + SymbolWidthA;
    Height := FSymbolTop + SymbolHeightA;
  end;

  Canvas.Pen.Color := FSymbolColor;
  Canvas.Pen.Style := psSolid;

  if (FTransparent = False) and (icount = 1) then
  begin
    Canvas.Brush.Color := FBackColor;
    Canvas.Brush.Style := bsSolid;
    if FMatch = True then
      Canvas.FillRect(Rect(0, 0,
       FSymbolLeft + SymbolWidthA, FSymbolTop + SymbolHeightA))
    else
      Canvas.FillRect(Rect(FSymbolLeft, FSymbolTop,
       FSymbolLeft + SymbolWidthA, FSymbolTop + SymbolHeightA));
  end;

  Canvas.Brush.Color := FSymbolColor;
  Canvas.Brush.Style := bsSolid;

  SX := FSymbolLeft + FSymbolSpaceLeft + QR_DIM_SEP * FPxmag;
  SY := FSymbolTop + FSymbolSpaceUp + QR_DIM_SEP * FPxmag;
  dim := vertable[Version].dimension;

  for y := 0 to dim - 1 do
  begin
    lx := 0;
    ly := y * FPxmag;
    ry := ly + FPxmag;
    inBlack := False;
    for x := 0 to dim - 1 do
    begin
      if (inBlack = False) and (isBlack(y, x) = True) then
      begin
        lx := x * FPxmag;
        inBlack := True;
      end
      else if (inBlack = True) and (isBlack(y, x) = False) then
      begin
        rx := x * FPxmag;
        Canvas.FillRect(Rect(SX + lx, SY + ly, SX + rx, SY + ry));
        inBlack := False;
      end;
    end;
    if inBlack = True then
    begin
      rx := dim * FPxmag;
      Canvas.FillRect(Rect(SX + lx, SY + ly, SX + rx, SY + ry));
    end;
  end;

  Canvas.Brush.Color := FBackColor;
  Canvas.Brush.Style := bsSolid;
  if FCommentUp <> '' then
  begin
    case FCommentUpLoc of
      locLeft:
        PositionUp := 0;
      locCenter:
        PositionUp := (FSymbolSpaceLeft + SymbolWidth + FSymbolSpaceRight
         - CmtUpWidth) div 2;
      locRight:
        PositionUp := FSymbolSpaceLeft + SymbolWidth + FSymbolSpaceRight
         - CmtUpWidth;
    else
      PositionUp := 0;
    end;
    if PositionUp < 0 then
      PositionUp := 0;
    UpLimit := FSymbolTop + FSymbolSpaceUp - CmtUpHeight;
    y := FSymbolTop;
    if y > UpLimit then
      y := UpLimit;
    Canvas.TextOut(FSymbolLeft + PositionUp, y, FCommentUp);
  end;

  if FCommentDown <> '' then
  begin
    case FCommentDownLoc of
      locLeft:
        PositionDown := 0;
      locCenter:
        PositionDown := (FSymbolSpaceLeft + SymbolWidth + FSymbolSpaceRight
         - CmtDownWidth) div 2;
      locRight:
        PositionDown := FSymbolSpaceLeft + SymbolWidth + FSymbolSpaceRight
         - CmtDownWidth;
    else
      PositionDown := 0;
    end;
    if PositionDown < 0 then
      PositionDown := 0;
    DownLimit := FSymbolTop + FSymbolSpaceUp + SymbolHeight;
    y := FSymbolTop + FSymbolSpaceUp + SymbolHeight + FSymbolSpaceDown
     - CmtDownHeight;
    if y < DownLimit then
      y := DownLimit;
    Canvas.TextOut(FSymbolLeft + PositionDown, y, FCommentDown);
  end;

  FSymbolDisped := True;
end;



procedure TQRCode.qrAddDataBits(n: Integer; w: Longword);
begin
  while n > 0 do
  begin
    Dec(n);
    dataword[dwpos] := dataword[dwpos] or (((w shr n) and 1) shl dwbit);
    Dec(dwbit);
    if dwbit < 0 then
    begin
      Inc(dwpos);
      dwbit := 7;
    end;
  end;
end;

procedure TQRCode.qrComputeECWord;
var
  i, j, k, m: Integer;
  ecwtop, dwtop, nrsb, rsbnum: Integer;
  dwlen, ecwlen: Integer;
  rsb: QR_RSBLOCK;
  e: Integer;
begin
  dwtop := 0;
  ecwtop := 0;
  nrsb := vertable[Version].ecl[FEclevel].nrsb;
  for i := 0 to nrsb - 1 do
  begin
    rsb := vertable[Version].ecl[FEclevel].rsb[i];
    rsbnum := rsb.rsbnum;
    dwlen := rsb.datawords;
    ecwlen := rsb.totalwords - rsb.datawords;
    for j := 0 to rsbnum - 1 do
    begin
      ZeroMemory(@rswork, SizeOf(rswork));
      CopyMemory(@rswork, @dataword[dwtop], dwlen);
      for k := 0 to dwlen - 1 do
      begin
        if rswork[0] = 0 then
        begin
          for m := 0 to QR_RSD_MAX - 2 do
            rswork[m] := rswork[m + 1];
          rswork[QR_RSD_MAX - 1] := 0;
          Continue;
        end;
        e := fac2exp[rswork[0]];
        for m := 0 to QR_RSD_MAX - 2 do
          rswork[m] := rswork[m + 1];
        rswork[QR_RSD_MAX - 1] := 0;
        for m := 0 to ecwlen - 1 do
          rswork[m] := rswork[m] xor exp2fac[(gftable[ecwlen][m] + e) mod 255];
      end;
      CopyMemory(@ecword[ecwtop], @rswork, ecwlen);
      Inc(dwtop, dwlen);
      Inc(ecwtop ,ecwlen);
    end;
  end;
end;

function TQRCode.qrEncodeDataWordA: Integer;
var
  p: PByte;
  n, m, len, mode: Integer;
  w: Longword;
begin
  Result := -1;
  mode := -1;
  qrInitDataWord;
  p := @source;
  len := qrGetSourceRegion(p, Cardinal(@source[srclen]) - Cardinal(p), mode);
  while len > 0 do
  begin
    if qrGetEncodedLength(mode, len) > qrRemainedDataBits then
      Exit;
    qrAddDataBits(4, modeid[mode]);
    w := Longword(len);
    if mode = QR_EM_KANJI then
      w := w shr 1;
    qrAddDataBits(vertable[Version].nlen[mode], w);
    case mode of
      QR_EM_NUMERIC:
      begin
        n := 0;
        w := 0;
        while len > 0 do
        begin
          Dec(len);
          w := w * 10 + Longword(p^ - $30); // $30 = '0'
          Inc(p);

          Inc(n);
          if n >= 3 then
          begin
            qrAddDataBits(10, w);
            n := 0;
            w := 0;
          end;
        end;

        if n = 1 then
          qrAddDataBits(4, w)
        else if n = 2 then
          qrAddDataBits(7, w);
      end;
      QR_EM_ALNUM:
      begin
        n := 0;
        w := 0;
        while len > 0 do
        begin
          Dec(len);
          w := w * 45 + Longword(Longint(alnumtable[p^]));
          Inc(p);
           Inc(n);
          if n >= 2 then
          begin
            qrAddDataBits(11, w);
            n := 0;
            w := 0;
          end;
        end;
        if n = 1 then
          qrAddDataBits(6, w);
      end;
      QR_EM_8BIT:
      begin
        while len > 0 do
        begin
          Dec(len);
          qrAddDataBits(8, p^);
          Inc(p);
        end;
      end;
      QR_EM_KANJI:
      begin
        while len >= 2 do
        begin
          if (p^ >= $81) and (p^ <= $9F) then
            w := (p^ - $81) * $C0
          else // if (p^ >= $E0) and (p^ <= $EB)
            w := (p^ - $C1) * $C0;
          Inc(p);
          if ((p^ >= $40) and (p^ <= $7E)) or ((p^ >= $80) and (p^ <= $FC)) then
            w := w + Longword(p^ - $40)
          else
            Exit;
          Inc(p);
          qrAddDataBits(13, w);
          Dec(len, 2);
        end;
        if len > 0 then
          Exit;
      end;
    end;
    len := qrGetSourceRegion(p, Cardinal(@source[srclen]) - Cardinal(p), mode);
  end;
  n := qrRemainedDataBits;
  if n < 4 then
  begin
    qrAddDataBits(n, 0);
    n := 0;
  end
  else
  begin
    qrAddDataBits(4, 0);
    Dec(n, 4);
  end;
  m := n mod 8;
  if m > 0 then
  begin
    qrAddDataBits(m, 0);
    Dec(n, m);
  end;
  w := PADWORD1;
  while n >= 8 do
  begin
    qrAddDataBits(8, w);
    if w = PADWORD1 then
      w := PADWORD2
    else
      w := PADWORD1;
    Dec(n, 8);
  end;
  FEmodeR := mode;
  Result := 0;
end;


function TQRCode.qrEncodeDataWordM: Integer;
var
  i: Integer;
  n, m: Integer;
  w: Longword;
begin

  Result := -1;

  qrInitDataWord;
  if qrGetEncodedLength(FEmode, srclen) > qrRemainedDataBits then
    Exit;
  qrAddDataBits(4, modeid[FEmode]);
  w := Longword(srclen);
  if (FEmode = QR_EM_KANJI) then
    w := w shr 1;
  qrAddDataBits(vertable[version].nlen[FEmode], w);
  if FEmode = QR_EM_NUMERIC then
  begin
    n := 0;
    w := 0;
    i := 0;
    while i < srclen do
    begin
      if (source[i] < $30) or (source[i] > $39) then // $30 = '0', $39 = '9'
        Exit;
      w := w * 10 + Longword(source[i] - $30);       // $30 = '0'
      Inc(n);
      if n >= 3 then
      begin
        qrAddDataBits(10, w);
        n := 0;
        w := 0;
      end;
      Inc(i);
    end;

    if n = 1 then
      qrAddDataBits(4, w)
    else if n = 2 then
      qrAddDataBits(7, w);
  end
  else if FEmode = QR_EM_ALNUM then
  begin
    n := 0;
    w := 0;
    i := 0;
    while i < srclen do
    begin
      if ((source[i] and $80) <> 0) or (alnumtable[source[i]] = -1) then
        Exit;
      w := w * 45 + Longword(Longint(alnumtable[source[i]]));
      Inc(n);
      if n >= 2 then
      begin
        qrAddDataBits(11, w);
        n := 0;
        w := 0;
      end;
      Inc(i);
    end;
    if n = 1 then
      qrAddDataBits(6, w);
  end
  else if FEmode = QR_EM_8BIT then
  begin
    i := 0;
    while i < srclen do
    begin
      qrAddDataBits(8, source[i]);
      Inc(i);
    end;
  end
  else if FEmode = QR_EM_KANJI then
  begin
    i := 0;
    while i < srclen - 1 do
    begin
      if (source[i] >= $81) and (source[i] <= $9F) then
        w := (source[i] - $81) * $C0
      else if (source[i] >= $E0) and (source[i] <= $EB) then
        w := (source[i] - $C1) * $C0
      else
        Exit;
      Inc(i);

      if ((source[i] >= $40) and (source[i] <= $7E)) or
       ((source[i] >= $80) and (source[i] <= $FC)) then
        w := w + source[i] - $40
      else
        Exit;
      Inc(i);
      qrAddDataBits(13, w);
    end;
    if i < srclen then
      Exit;
  end;
  n := qrRemainedDataBits;
  if n < 4 then
  begin
    qrAddDataBits(n, 0);
    n := 0;
  end
  else
  begin
    qrAddDataBits(4, 0);
    Dec(n, 4);
  end;
  m := n mod 8;
  if m > 0 then
  begin
    qrAddDataBits(m, 0);
    Dec(n, m);
  end;
  w := PADWORD1;
  while n >= 8 do
  begin
    qrAddDataBits(8, w);
    if w = PADWORD1 then
      w := PADWORD2
    else
      w := PADWORD1;
    Dec(n, 8);
  end;
  Result := 0;
end;

function TQRCode.qrEvaluateMaskPattern: Longint;
var
  i, j, m, n, dim: Integer;
  penalty: Longint;
begin
  penalty := 0;
  dim := vertable[Version].dimension;
  for i := 0 to dim - 1 do
  begin
    n := 0;
    for j := 0 to dim - 1 do
    begin
      if (j > 0) and (isBlack(i, j) = isBlack(i, j - 1)) then
        Inc(n)
      else
      begin
        if n >= 5 then
          penalty := penalty + 3 + (n - 5);
        n := 1;
      end;
    end;
    if n >= 5 then
      penalty := penalty + 3 + (n - 5);
  end;
  for i := 0 to dim - 1 do
  begin
    n := 0;
    for j := 0 to dim - 1 do
    begin
      if (j > 0) and (isBlack(j, i) = isBlack(j - 1, i)) then
        Inc(n)
      else
      begin
        if n >= 5 then
          penalty := penalty + 3 + (n - 5);
        n := 1;
      end;
    end;
    if n >= 5 then
      penalty := penalty + 3 + (n - 5);
  end;
  for i := 0 to dim - 2 do
  begin
    for j := 0 to dim - 2 do
    begin
      if (
        (isBlack(i, j) = isBlack(i, j + 1)) and
        (isBlack(i, j) = isBlack(i + 1, j)) and
        (isBlack(i, j) = isBlack(i + 1, j + 1))
      ) then
        Inc(penalty, 3);
    end;
  end;
  for i := 0 to dim - 1 do
  begin
    for j := 0 to dim - 7 do
    begin
      if (
        ((j = 0) or (isBlack(i, j - 1) = False)) and
        (isBlack(i, j + 0) = True) and
        (isBlack(i, j + 1) = False) and
        (isBlack(i, j + 2) = True) and
        (isBlack(i, j + 3) = True) and
        (isBlack(i, j + 4) = True) and
        (isBlack(i, j + 5) = False) and
        (isBlack(i, j + 6) = True) and
        ((j = dim-7) or (isBlack(i, j + 7) = False))
      ) then
        Inc(penalty, 40);
    end;
  end;
  for i := 0 to dim - 1 do
  begin
    for j := 0 to dim - 7 do
    begin
      if (
        ((j = 0) or (isBlack(j - 1, i) = False)) and
        (isBlack(j + 0, i) = True) and
        (isBlack(j + 1, i) = False) and
        (isBlack(j + 2, i) = True) and
        (isBlack(j + 3, i) = True) and
        (isBlack(j + 4, i) = True) and
        (isBlack(j + 5, i) = False) and
        (isBlack(j + 6, i) = True) and
        ((j = dim - 7) or (isBlack(j + 7, i) = False))
      ) then
        Inc(penalty, 40);
    end;
  end;
  m := 0;
  n := 0;
  for i := 0 to dim - 1 do
  begin
    for j := 0 to dim - 1 do
    begin
      Inc(m);
      if isBlack(i, j) = True then
        Inc(n);
    end;
  end;
  penalty := penalty + Abs((n * 100 div m) - 50) div 5 * 10;
  Result := penalty;
end;

procedure TQRCode.qrFillCodeWord;
var
  i, j: Integer;
begin
  qrInitPosition;
  for i := 0 to vertable[Version].totalwords - 1 do
  begin
    for j := 7 downto 0 do
    begin
      if (codeword[i] and (1 shl j)) <> 0 then
        symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_DATA;
      qrNextPosition;
    end;
  end;
end;

procedure TQRCode.qrFillFormatInfo;
var
  i, j, dim, fmt, modulo, xpos, ypos: Integer;
  v: Longint;
begin
  dim := vertable[Version].dimension;
  fmt := ((FEclevel xor 1) shl 3) or FMasktypeR;
  modulo := fmt shl 10;
  for i := 14 downto 10 do
  begin
    if (modulo and (1 shl i)) = 0 then
      continue;
    modulo :=  modulo xor ($0537 shl (i - 10));
  end;
  fmt := ((fmt shl 10) + modulo) xor $5412;
    
  for i := 0 to 1 do
  begin
    for j := 0 to QR_FIN_MAX - 1 do
    begin
      if (fmt and (1 shl j)) = 0 then
        continue;
      xpos := (fmtinfopos[i][j].xpos + dim) mod dim;
      ypos := (fmtinfopos[i][j].ypos + dim) mod dim;
      symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_BLACK;
    end;
  end;
  xpos := (fmtblackpos.xpos + dim) mod dim;
  ypos := (fmtblackpos.ypos + dim) mod dim;
  symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_BLACK;
  v := verinfo[Version];
  if v <> -1 then
  begin
    for i := 0 to 1 do
    begin
      for j := 0 to QR_VIN_MAX - 1 do
      begin
        if (v and (1 shl j)) = 0 then
          continue;
        xpos := (verinfopos[i][j].xpos + dim) mod dim;
        ypos := (verinfopos[i][j].ypos + dim) mod dim;
        symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_BLACK;
      end;
    end;
  end;
end;

procedure TQRCode.qrFillFunctionPattern;
var
  i, j, n, dim, xpos, ypos: Integer;
  x, y, x0, y0, xcenter, ycenter: Integer;
begin
  dim := vertable[Version].dimension;
  ZeroMemory(@symbol, SizeOf(symbol));
  for i := 0 to QR_DIM_FINDER - 1 do
  begin
    for j := 0 to QR_DIM_FINDER - 1 do
    begin
      symbol[i][j] := finderpattern[i][j];
      symbol[i][dim - 1 - j] := finderpattern[i][j];
      symbol[dim - 1 - i][j] := finderpattern[i][j];
    end;
  end;
  for i := 0 to QR_DIM_FINDER do
  begin
    symbol[i][QR_DIM_FINDER] := QR_MM_FUNC;
    symbol[QR_DIM_FINDER][i] := QR_MM_FUNC;
    symbol[i][dim - 1 - QR_DIM_FINDER] := QR_MM_FUNC;
    symbol[dim - 1 - QR_DIM_FINDER][i] := QR_MM_FUNC;
    symbol[dim - 1 - i][QR_DIM_FINDER] := QR_MM_FUNC;
    symbol[QR_DIM_FINDER][dim - 1 - i] := QR_MM_FUNC;
  end;
  n := vertable[Version].aplnum;
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      ycenter := vertable[Version].aploc[i];
      xcenter := vertable[Version].aploc[j];
      y0 := ycenter - QR_DIM_ALIGN div 2;
      x0 := xcenter - QR_DIM_ALIGN div 2;
      if isFunc(ycenter, xcenter) = True then
        Continue;
      for y := 0 to QR_DIM_ALIGN - 1 do
      begin
        for x := 0 to QR_DIM_ALIGN - 1 do
          symbol[y0 + y][x0 + x] := alignpattern[y][x];
      end;
    end;
  end;
  for i := QR_DIM_FINDER to dim - 1 - QR_DIM_FINDER - 1 do
  begin
    symbol[i][QR_DIM_TIMING] := QR_MM_FUNC;
    symbol[QR_DIM_TIMING][i] := QR_MM_FUNC;
    if (i and 1) = 0 then
    begin
      symbol[i][QR_DIM_TIMING] := symbol[i][QR_DIM_TIMING] or QR_MM_BLACK;
      symbol[QR_DIM_TIMING][i] := symbol[QR_DIM_TIMING][i] or QR_MM_BLACK;
    end;
  end;
  for i := 0 to 1 do
  begin
    for j := 0 to QR_FIN_MAX - 1 do
    begin
      xpos := (fmtinfopos[i][j].xpos + dim) mod dim;
      ypos := (fmtinfopos[i][j].ypos + dim) mod dim;
      symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_FUNC;
    end;
  end;
  xpos := (fmtblackpos.xpos + dim) mod dim;
  ypos := (fmtblackpos.ypos + dim) mod dim;
  symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_FUNC;
  if verinfo[Version] <> -1 then
  begin
    for i := 0 to 1 do
    begin
      for j := 0 to QR_VIN_MAX - 1 do
      begin
        xpos := (verinfopos[i][j].xpos + dim) mod dim;
        ypos := (verinfopos[i][j].ypos + dim) mod dim;
        symbol[ypos][xpos] := symbol[ypos][xpos] or QR_MM_FUNC;
      end;
    end;
  end;
end;

function TQRCode.qrGetEncodedLength(mode: Integer; len: Integer): Integer;
var
  n: Integer;
begin
  n := 4 + vertable[Version].nlen[mode];
  case mode of
    QR_EM_NUMERIC:
    begin
      n := n + (len div 3) * 10;
      case (len mod 3) of
        1: Inc(n, 4);
        2: Inc(n, 7);
      end;
    end;
    QR_EM_ALNUM:
    begin
      n := n + (len div 2) * 11;
      if (len mod 2) = 1 then
        Inc(n, 6);
    end;
    QR_EM_8BIT:
      n := n + len * 8;
    QR_EM_KANJI:
      n := n + (len div 2) * 13;
  end;
  Result := n;
end;

function TQRCode.qrGetSourceRegion(src: PByte; len: Integer; var mode: Integer): Integer;
var
  n, m, cclass, ccnext: Integer;
  HasData: Boolean;
begin
  Result := 0;
  if len = 0 then
    Exit;
  HasData := True;
  cclass := CharClassOf(src, len);
  n := 0;
  while HasData do
  begin
    while (len > 0) and (CharClassOf(src, len) = cclass) do
    begin
      if cclass = QR_EM_KANJI then
      begin
        Inc(src, 2);
        Dec(len, 2);
        Inc(n, 2);
      end
      else
      begin
        Inc(src);
        Dec(len);
        Inc(n);
      end;
    end;
    if (len = 0) then
    begin
      mode := cclass;
      Result := n;
      Exit;
    end;
    ccnext := CharClassOf(src, len);
    if (cclass = QR_EM_KANJI) or (ccnext = QR_EM_KANJI) then
    begin
      mode := cclass;
      Result := n;
      Exit;
    end;
    if cclass > ccnext then
    begin
      m := 0;
      while (len > 0) and (CharClassOf(src, len) = ccnext) do
      begin
        Inc(src);
        Dec(len);
        Inc(m);
      end;
      if (len > 0) and (CharClassOf(src, len) = cclass) then
      begin
        if (qrGetEncodedLength(cclass, n) + qrGetEncodedLength(ccnext, m) +
         qrGetEncodedLength(cclass, 0)) < qrGetEncodedLength(cclass, n + m) then
        begin
          mode := cclass;
          Result := n;
          Exit;
        end
        else
        begin
          Inc(n, m);
          Continue;
        end;
      end
      else
      begin
        if (qrGetEncodedLength(cclass, n) + qrGetEncodedLength(ccnext, m))
         < qrGetEncodedLength(cclass, n + m) then
        begin
          mode := cclass;
          Result := n;
          Exit;
        end
        else
        begin
          Inc(n, m);
          Continue;
        end;
      end;
    end
    else if cclass < ccnext then
    begin
      m := 0;
      while (len > 0) and (CharClassOf(src, len) = ccnext) do
      begin
        Inc(src);
        Dec(len);
        Inc(m);
      end;
      if (qrGetEncodedLength(cclass, n) + qrGetEncodedLength(ccnext, m))
       < qrGetEncodedLength(ccnext, n + m) then
      begin
        mode := cclass;
        Result := n;
        Exit;
      end
      else
      begin
        mode := ccnext;
        Result := n + m;
        Exit;
      end;
    end;
  end;
end;

procedure TQRCode.qrInitDataWord;
begin
  ZeroMemory(@dataword, SizeOf(dataword));
  dwpos := 0;
  dwbit := 7;

  if FMode = qrConnect then
  begin
    qrAddDataBits(4, 3); // 0011B = 3
    qrAddDataBits(4, icount - 1);
    qrAddDataBits(4, FCount - 1);
    qrAddDataBits(8, FParity);
  end;
end;


procedure TQRCode.qrInitPosition;
begin
  xpos := vertable[Version].dimension - 1;
  ypos := xpos;
  xdir := -1;
  ydir := -1;
end;

procedure TQRCode.qrMakeCodeWord;
var
  i, j, k, cwtop, pos: Integer;
  dwlenmax, ecwlenmax: Integer;
  dwlen, ecwlen, nrsb: Integer;
begin
  nrsb := vertable[Version].ecl[FEclevel].nrsb;
  dwlenmax := vertable[Version].ecl[FEclevel].rsb[nrsb - 1].datawords;
  ecwlenmax := vertable[Version].ecl[FEclevel].rsb[nrsb - 1].totalwords
               - vertable[Version].ecl[FEclevel].rsb[nrsb - 1].datawords;
  cwtop := 0;
  for i := 0 to dwlenmax - 1 do
  begin
    pos := i;
    for j := 0 to nrsb - 1 do
    begin
      dwlen := vertable[Version].ecl[FEclevel].rsb[j].datawords;
      for k := 0 to vertable[Version].ecl[FEclevel].rsb[j].rsbnum - 1 do
      begin
        if i < dwlen then
        begin
          codeword[cwtop] := dataword[pos];
          Inc(cwtop);
        end;
        Inc(pos, dwlen);
      end;
    end;
  end;
  for i := 0 to ecwlenmax - 1 do
  begin
    pos := i;
    for j := 0 to nrsb - 1 do
    begin
      ecwlen := vertable[Version].ecl[FEclevel].rsb[j].totalwords
                - vertable[Version].ecl[FEclevel].rsb[j].datawords;
      for k := 0 to vertable[Version].ecl[FEclevel].rsb[j].rsbnum - 1 do
      begin
        if i < ecwlen then
        begin
          codeword[cwtop] := ecword[pos];
          Inc(cwtop);
        end;
        Inc(pos, ecwlen);
      end;
    end;
  end;
end;

procedure TQRCode.qrNextPosition;
begin
  repeat
    Inc(xpos ,xdir);
    if xdir > 0 then
      Inc(ypos ,ydir);
    xdir := -xdir;
    if (ypos < 0) or (ypos >= vertable[Version].dimension) then
    begin
      Dec(ypos ,ydir);
      ydir := -ydir;
      Dec(xpos ,2);
      if xpos = QR_DIM_TIMING then
        Dec(xpos);
    end;
  until isFunc(ypos, xpos) = False;
end;

function TQRCode.qrRemainedDataBits: Integer;
begin
  Result := (vertable[Version].ecl[FEclevel].datawords - dwpos) * 8 - (7 - dwbit);
end;

procedure TQRCode.qrSelectMaskPattern;
var
  mask, xmask: Integer;
  penalty, xpenalty: Longint;
begin
  if FMasktype >= 0 then
  begin
    qrSetMaskPattern(FMasktype);
    Exit;
  end;
  xmask := 0;
  xpenalty := -1;
  for mask := 0 to QR_MPT_MAX - 1 do
  begin
    qrSetMaskPattern(mask);
    penalty := qrEvaluateMaskPattern;
    if (xpenalty = -1) or (penalty < xpenalty) then
    begin
      xmask := mask;
      xpenalty := penalty;
    end;
  end;
  FMasktypeR := xmask;
  qrSetMaskPattern(xmask);
end;

procedure TQRCode.qrSetMaskPattern(mask: Integer);
var
  i, j, dim: Integer;
begin
  dim := vertable[Version].dimension;
  for i := 0 to dim - 1 do
  begin
    for j := 0 to dim - 1 do
    begin
      if isFunc(i, j) = True then
        Continue;
      if isData(i, j) = True then
        symbol[i][j] := symbol[i][j] or QR_MM_BLACK
      else
        symbol[i][j] := symbol[i][j] and (not QR_MM_BLACK);
    end;
  end;
  for i := 0 to dim - 1 do
  begin
    for j := 0 to dim - 1 do
    begin
      if isFunc(i, j) = True then
        Continue;
      if (
        ((mask = 0) and ((i + j) mod 2 = 0)) or
        ((mask = 1) and (i mod 2 = 0)) or
        ((mask = 2) and (j mod 3 = 0)) or
        ((mask = 3) and ((i + j) mod 3 = 0)) or
        ((mask = 4) and (((i div 2) + (j div 3)) mod 2 = 0)) or
        ((mask = 5) and ((i * j) mod 2 + (i * j) mod 3 = 0)) or
        ((mask = 6) and (((i * j) mod 2 + (i * j) mod 3) mod 2 = 0)) or
        ((mask = 7) and (((i * j) mod 3 + (i + j) mod 2) mod 2 = 0))
      ) then
        symbol[i][j] := symbol[i][j] xor QR_MM_BLACK;
    end;
  end;
end;

procedure TQRCode.RepaintSymbol;
begin
  PaintSymbolCode;
end;

procedure TQRCode.SetBackColor(const Value: TColor);
begin
  FBackColor := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetBinaryOperation(const Value: Boolean);
begin
  FBinaryOperation := Value;
  FLen := Code2Data;
  PaintSymbolCode;
end;

procedure TQRCode.SetClearOption(const Value: Boolean);
begin
  if Value = False then
    FClearOption := Value
  else
  begin
    if FClearOption = False then
    begin
      FClearOption := Value;
      if FSymbolDisped = False then
        Clear;
    end;
  end;
end;


procedure TQRCode.SetCode(const Value: AnsiString);
begin
   FreeImage;
  ChangeCode;
  FCode := Value;
  FLen := Code2Data;
  PaintSymbolCode;
  ChangedCode;
end;

procedure TQRCode.SetColumn(const Value: Integer);
begin
  if (Value >= 1) and (Value <= QR_PLS_MAX) then
  begin
    FColumn := Value;
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetComFont(const Value: TFont);
begin
  if (Value <> nil) and (Value <> FComFont) then
  begin
    FComFont.Assign(Value);
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetCommentDown(const Value: String);
begin
  FCommentDown := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetCommentDownLoc(const Value: TLocation);
begin
  FCommentDownLoc := Value;
  if FCommentDown <> '' then
    PaintSymbolCode;
end;

procedure TQRCode.SetCommentUp(const Value: String);
begin
  FCommentUp := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetCommentUpLoc(const Value: TLocation);
begin
  FCommentUpLoc := Value;
  if FCommentUp <> '' then
    PaintSymbolCode;
end;

procedure TQRCode.SetCount(const Value: Integer);
begin
  if (Value >= 1) and (Value <= QR_PLS_MAX) then
  begin
    FCount := Value;
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetEclevel(const Value: Integer);
begin
  if Value in [0..QR_ECL_MAX - 1] then
  begin
    FEclevel := Value;
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetEmode(const Value: Integer);
begin
  if (Value in [0..QR_EM_MAX - 1]) or (Value = -1) then
  begin
    FEmode := Value;
    FEmodeR := FEmode;
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetMasktype(const Value: Integer);
begin
  if (Value in [0..QR_MPT_MAX - 1]) or (Value = -1) then
  begin
    FMasktype := Value;
    FMasktypeR := FMasktype;
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetMatch(const Value: Boolean);
begin
  FMatch := Value;
  if FMatch = True then
  begin
    if FTransparent = True then
      FTransparent := False;
  end;
  PaintSymbolCode;
end;

procedure TQRCode.SetMode(const Value: TQRMode);
begin
  if Value = qrSingle then
    FCount := 1
  else if Value = qrConnect then
  begin
    if FCount < 2 then
      FCount := 2
    else if FCount > QR_CNN_MAX then
      FCount := QR_CNN_MAX;
  end
  else if Value = qrPlus then
  begin
    if FCount < 2 then
      FCount := 2
    else if FCount > QR_PLS_MAX then
      FCount := QR_PLS_MAX;
  end
  else
    Exit;
  FMode := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetNumbering(const Value: TNumbering);
begin
  if Value in [nbrNone, nbrHead, nbrTail, nbrIfVoid] then
  begin
    FNumbering := Value;
    if FCount > 1 then
      PaintSymbolCode;
  end;
end;


procedure TQRCode.SetPxmag(const Value: Integer);
begin
  if Value in [1..10] then
  begin
    FPxmag := Value;
    PaintSymbolCode;
  end;
end;

procedure TQRCode.SetReverse(const Value: Boolean);
begin
  FReverse := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetSymbolColor(const Value: TColor);
begin
  FSymbolColor := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetSymbolDebug(const Value: Boolean);
begin
  FSymbolDebug := Value
end;

procedure TQRCode.SetSymbolEnabled(const Value: Boolean);
begin
  if FSymbolEnabled <> Value then
  begin
    FSymbolEnabled := Value;
    if FSymbolEnabled = True then
      PaintSymbolCode;
  end;
end;

procedure TQRCode.SetSymbolLeft(const Value: Integer);
begin
  FSymbolLeft := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetSymbolSpaceDown(const Value: Integer);
begin
  FSymbolSpaceDown := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetSymbolSpaceLeft(const Value: Integer);
begin
  FSymbolSpaceLeft := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetSymbolSpaceRight(const Value: Integer);
begin
  FSymbolSpaceRight := Value;
  PaintSymbolCode;
end;


procedure TQRCode.SetSymbolSpaceUp(const Value: Integer);
begin
  FSymbolSpaceUp := Value;
  PaintSymbolCode;
end;

procedure TQRCode.SetSymbolTop(const Value: Integer);
begin
  FSymbolTop := Value;
  PaintSymbolCode;
end;


procedure TQRCode.SetVersion(const Value: Integer);
begin
  if Value in [1..QR_VER_MAX] then
   begin
    FVersion := Value;
    PaintSymbolCode;
   end
  else if Value=0 then
   begin
     FVersion:=GetVersion;
         PaintSymbolCode;
   end;
end;


end.


