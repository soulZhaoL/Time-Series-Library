import os

import pandas as pd


def convert_csv_to_ts(csv_file_path, ts_file_path, batch_size=100):
    # 读取CSV文件
    csv_data = pd.read_csv(csv_file_path, dtype=str)
    print("process :" + csv_file_path)
    # 准备TS文件的头部信息
    header_info = """@problemName YourProblemName
@timeStamps false
@missing false
@univariate false
@dimensions {dimensions}
@equalLength true
@seriesLength {series_length}
@classLabel true {class_labels}
@data
"""
    header_info = header_info.format(
        dimensions=len(csv_data.columns) - 1,  # 减1是因为一个列是类标签
        series_length=len(csv_data),
        class_labels=' '.join(csv_data['label'].unique())
    )
    # 如果文件已经存在，删除它
    if os.path.exists(ts_file_path):
        os.remove(ts_file_path)

    # 将头部信息写入TS文件
    with open(ts_file_path, 'w') as file:
        file.write(header_info)

    # 分批次写入数据
    num_batches = len(csv_data) // batch_size + (1 if len(csv_data) % batch_size else 0)

    for i in range(num_batches):
        start_idx = i * batch_size
        end_idx = start_idx + batch_size
        data_batch = csv_data[start_idx:end_idx]

        data_section = []
        for index, row in data_batch.iterrows():
            series_data = ','.join(row.drop('label').astype(str))
            class_label = str(row['label'])  # 确保类标签也是字符串类型
            data_section.append(f'{series_data}:{class_label}')

        data_section_str = '\n'.join(data_section)

        # 将数据批次追加到TS文件
        with open(ts_file_path, 'a') as file:
            file.write(data_section_str + '\n')
    print("process end.")

# 调用函数，将CSV数据转换为TS格式
convert_csv_to_ts('./../dataset/BTC/BTC_TEST.csv', 'BTC_TEST.ts')
convert_csv_to_ts('./../dataset/BTC/BTC_TRAIN.csv', 'BTC_TRAIN.ts')
