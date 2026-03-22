return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			"github/copilot.vim", -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			panel = {
				layout = {
					position = "right",
					width = 0.4,
				},
			},
		},
		keys = {
			{ "<leader>cc", ":CopilotChat<CR>", mode = "n", desc = "Copilot Chat" },
			{ "<leader>ce", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
			{ "<leader>cC", ":CopilotChatNoContext<CR>", mode = "n", desc = "Copilot Chat (No Context)" },
			{ "<leader>cS", ":CopilotChatSuggest<CR>", mode = "n", desc = "Copilot Chat Suggest" },
			{ "<leader>cA", ":CopilotChatAccept<CR>", mode = "n", desc = "Copilot Chat Accept" },
			{ "<leader>cR", ":CopilotChatReject<CR>", mode = "n", desc = "Copilot Chat Reject" },
			{ "<leader>cR", ":CopilotChatReview<CR>", mode = "v", desc = "Copilot Chat Review" },
			{ "<leader>cF", ":CopilotChatFix<CR>", mode = "v", desc = "Copilot Chat Fix" },
			{ "<leader>cO", ":CopilotChatOptimize<CR>", mode = "v", desc = "Copilot Chat Optimize" },
			{ "<leader>cT", ":CopilotChatTest<CR>", mode = "v", desc = "Copilot Chat Test" },
			{ "<leader>cM", ":CopilotChatCommit<CR>", mode = "v", desc = "Copilot Chat Commit" },
			{ "<leader>cM", ":CopilotChatCommit<CR>", mode = "v", desc = "Copilot Chat Commit" },
			{ "<leader>cm", ":CopilotChatModel<CR>", mode = "n", desc = "Copilot Chat Switch Model" },
		},
	},
}
