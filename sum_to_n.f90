! 程式名稱：sum_to_n —— 計算 1 + 2 + ... + N 的總和
program sum_to_n
  implicit none                                  ! 關閉隱式型別，所有變數都必須宣告
  integer(kind=8) :: n, i, total                 ! 64 位元整數：N、迴圈計數器、累加總和
  write(*,'(A)', advance='no') 'Enter N: '       ! 顯示提示文字，不換行
  read(*,*) n                                    ! 從鍵盤讀入 N
  if (n < 1) then                                ! 檢查 N 是否為正整數
    print *, 'N must be a positive integer.'     ! 若不是，顯示錯誤訊息
    stop 1                                       ! 以錯誤碼 1 結束程式
  end if                                         ! 結束 if 判斷
  total = 0                                      ! 總和初始化為 0
  do i = 1, n                                    ! 迴圈：i 從 1 跑到 N
    total = total + i                            ! 將 i 累加到總和
  end do                                         ! 結束迴圈
  print '(A,I0,A,I0)', 'Sum of 1 to ', n, ' = ', total  ! 輸出計算結果
end program sum_to_n                             ! 程式結束
