﻿using System.Collections.Generic;
using System.Linq;

namespace MSSQLServerAuditor.Utils
{
	public static class Collections
	{
		/// <summary>
		/// Determines whether the collection is null or contains no elements.
		/// </summary>
		/// <typeparam name="T">The IEnumerable type.</typeparam>
		/// <param name="enumerable">The enumerable, which may be null or empty.</param>
		/// <returns>
		///     <c>true</c> if the IEnumerable is null or empty; otherwise, <c>false</c>.
		/// </returns>
		public static bool IsNullOrEmpty<T>(this IEnumerable<T> enumerable)
		{
			if (enumerable == null)
			{
				return true;
			}

			ICollection<T> collection = enumerable as ICollection<T>;

			if (collection != null)
			{
				return collection.Count < 1;
			}

			return !enumerable.Any();
		}
	}
}
