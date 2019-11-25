"""Directory glob lookup

Original is Ansible fileglob lookup-plugin.

https://github.com/ansible/ansible/blob/devel/lib/ansible/plugins/lookup/fileglob.py
"""

import os
import glob

from ansible.plugins.lookup import LookupBase
from ansible.errors import AnsibleFileNotFound  # noqa
from ansible.module_utils._text import to_bytes, to_text


class LookupModule(LookupBase):

    def run(self, terms, variables=None, **kwargs):

        ret = []
        errors_ = 'surrogate_or_strict'
        for term in terms:
            term_file = os.path.basename(term)
            dwimmed_path = self.find_file_in_search_path(
                variables, 'files', os.path.dirname(term))
            if dwimmed_path:
                globbed = glob.glob(to_bytes(
                    os.path.join(dwimmed_path, term_file), errors=errors_))
                ret.extend(
                    to_text(g, errors=errors_)
                    for g in globbed if os.path.isdir(g)
                )
        return ret
