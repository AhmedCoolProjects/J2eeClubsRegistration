

<%@page import="model.Club"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.tailwindcss.com"></script>
<meta charset="ISO-8859-1">
<title>ESI CLUBS</title>
</head>
<body>
	<!-- component -->
	<%
	ArrayList<Club> clubsList = (ArrayList) request.getAttribute("clubsList");
	ArrayList<Integer> clubsIdsList = (ArrayList) request.getAttribute("clubsIdsList");
	%>

	<table class="min-w-full border-collapse block md:table">
		<thead class="block md:table-header-group">
			<tr
				class="border border-grey-500 md:border-none block md:table-row absolute -top-full md:top-auto -left-full md:left-auto  md:relative ">
				<th
					class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">N°
					Club</th>
				<th
					class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Nom</th>
				<th
					class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">President</th>
				<th
					class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Date</th>
				<th
					class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Actions</th>
			</tr>
		</thead>
		<tbody class="block md:table-row-group">
			<%
			for (Club c : clubsList) {
			%>

			<tr
				class="bg-gray-300 border border-grey-500 md:border-none block md:table-row">
				<td
					class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><%=c.getNumber()%></td>
				<td
					class="p-2 md:border md:border-grey-500 text-left block md:table-cell">
					<%=c.getName()%>

				</td>
				<td
					class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><%=c.getPresident_name()%></td>
				<td
					class="p-2 md:border md:border-grey-500 text-left block md:table-cell">
					<%=c.getDate()%>
				</td>
				<td
					class="p-2 md:border md:border-grey-500 text-left block md:table-cell">
					<%
					if (clubsIdsList.contains(c.getNumber())) {
					%>
					<button
						class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 border border-red-500 rounded">
						<a href="/clubs/inscription?idClub=<%=c.getNumber()%>">Se
							desabonner</a>
					</button> <%
 } else {
 %>
					<button
						class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-2 border border-blue-500 rounded">
						<a href="/clubs/inscription?idClub=<%=c.getNumber()%>">S'inscrire</a>
					</button> <%
 }
 %>


				</td>
			</tr>


			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>