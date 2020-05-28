function  out = PSNR (I, J)
    out = 10 * log10(1/MSE(I, J));
end