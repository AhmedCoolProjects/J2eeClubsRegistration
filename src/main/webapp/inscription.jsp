<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div
		class="w-full min-h-screen bg-gray-50 flex flex-col sm:justify-center items-center pt-6 sm:pt-0">
		<div class="w-full sm:max-w-md p-5 mx-auto">
			<h2 class="mb-12 text-center text-5xl font-extrabold">
				Welcome. to
				<%=request.getAttribute("idClub")%>
			</h2>
			<form method="POST" action="/clubs/inscription">
				<div class="mb-4">
					<label class="block mb-1" for="email1">Club Number</label> <input
						id="email1" type="text" name="idClub"
						value="<%=request.getAttribute("idClub")%>"
						class="py-2 px-3 border border-gray-300 focus:border-red-300 focus:outline-none focus:ring focus:ring-red-200 focus:ring-opacity-50 rounded-md shadow-sm disabled:bg-gray-100 mt-1 block w-full" />
				</div>
				<div class="mb-4">
					<label class="block mb-1" for="email">First Name</label> <input
						id="email" type="text" name="first_name"
						class="py-2 px-3 border border-gray-300 focus:border-red-300 focus:outline-none focus:ring focus:ring-red-200 focus:ring-opacity-50 rounded-md shadow-sm disabled:bg-gray-100 mt-1 block w-full" />
				</div>
				<div class="mb-4">
					<label class="block mb-1" for="password">Last Name</label> <input
						id="password" type="text" name="last_name"
						class="py-2 px-3 border border-gray-300 focus:border-red-300 focus:outline-none focus:ring focus:ring-red-200 focus:ring-opacity-50 rounded-md shadow-sm disabled:bg-gray-100 mt-1 block w-full" />
				</div>

				<div class="mt-6">
					<button
						class="w-full inline-flex items-center justify-center px-4 py-2 bg-red-600 border border-transparent rounded-md font-semibold capitalize text-white hover:bg-red-700 active:bg-red-700 focus:outline-none focus:border-red-700 focus:ring focus:ring-red-200 disabled:opacity-25 transition"
						type="submit">S'inscrire</button>
				</div>

			</form>
		</div>
	</div>
</body>
</html>