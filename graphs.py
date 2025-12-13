import matplotlib.pyplot as plt

# Example data (replace with your measured times)
sizes = [1, 10, 100]  # MB
raw_times = [0.2, 1.5, 12.3]  # seconds
normalized_times = [0.3, 1.2, 8.7]  # seconds

plt.plot(sizes, raw_times, marker='o', label='Raw Schema')
plt.plot(sizes, normalized_times, marker='o', label='Normalized Schema')

plt.xlabel("Dataset Size (MB)")
plt.ylabel("Execution Time (seconds)")
plt.title("Query Performance Comparison")
plt.legend()
plt.grid(True)
plt.savefig("results_graphs/comparison_chart.png")
plt.show()