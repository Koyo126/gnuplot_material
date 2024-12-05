#include <iostream>
#include <string>
#include <fstream>
#include <cmath>
#include <iomanip>

namespace INPUT{
  std::string const DataFilePath = "./data.dat";  // データの出力先
  int const NGrid = 1000;  // x 軸の細かさ
  double const XRange[2] = {-10.0, 10.0};  // x 軸の範囲
}

int main(){
  /// ファイルを開く
  std::ofstream outfile;
  outfile.open(INPUT::DataFilePath);
  if(!outfile.is_open()){
    std::cerr << INPUT::DataFilePath << " を開けませんでした。" << std::endl;
    return -1;
  }

  std::string Title[3] = 
  {
    "Linear function", "Quadratic function", "Cubic function"
  };

  double DeltaX = (INPUT::XRange[1] - INPUT::XRange[0])/INPUT::NGrid;
  
  /// ファイルに書き込む
  for(int ilabel = 0; ilabel < 3; ilabel++){
    outfile << std::endl << "#  " << ilabel << " . " << Title[ilabel] << std::endl;
    for(int x = 0; x < INPUT::NGrid; x++){
      double XValue = INPUT::XRange[0] + DeltaX*x;
      double YValue = std::pow(XValue, ilabel + 1);
      outfile << std::fixed << std::setprecision(6) << std::setw(12) << XValue << std::fixed << std::setprecision(8) << std::setw(15) << YValue << std::endl;
    }
  }

  outfile.close();

  return 0;
}
