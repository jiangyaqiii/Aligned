#下载对应aligned CLI
curl -L https://raw.githubusercontent.com/yetanotherco/aligned_layer/main/batcher/aligned/install_aligned.sh | bash

#加载环境变量
source /root/.bashrc

#下载证明文件
curl -L https://raw.githubusercontent.com/yetanotherco/aligned_layer/main/batcher/aligned/get_proof_test_files.sh | bash

#执行证明步骤
aligned submit  --proving_system SP1  --proof ~/.aligned/test_files/sp1_fibonacci.proof  --vm_program ~/.aligned/test_files/sp1_fibonacci-elf  --aligned_verification_data_path ~/aligned_verification_data --conn wss://batcher.alignedlayer.com

