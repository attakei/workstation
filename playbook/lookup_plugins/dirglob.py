"""Directory glob lookup

Original is Ansible fileglob lookup-plugin.

https://github.com/ansible/ansible/blob/devel/lib/ansible/plugins/lookup/fileglob.py
"""

import os
import glob

from ansible.plugins.lookup import LookupBase
from ansible.errors import AnsibleFileNotFound
from ansible.module_utils._text import to_bytes, to_text


class LookupModule(LookupBase):

    def run(self, terms, variables=None, **kwargs):

        ret = []
        for term in terms:
            term_file = os.path.basename(term)
            dwimmed_path = self.find_file_in_search_path(variables, 'files', os.path.dirname(term))
            if dwimmed_path:
                globbed = glob.glob(to_bytes(os.path.join(dwimmed_path, term_file), errors='surrogate_or_strict'))
                ret.extend(to_text(g, errors='surrogate_or_strict') for g in globbed if os.path.isdir(g))
        return ret
