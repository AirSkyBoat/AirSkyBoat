/*
===========================================================================

Copyright (c) 2023 LandSandBoat Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#ifndef _CHATFILTER_H
#define _CHATFILTER_H

#include "../../common/cbasetypes.h"

class CBasicPacket;

class CBaseEntity;
class CCharEntity;

class CChatFilter
{
public:
    CChatFilter(const CBaseEntity* const _sender, CBasicPacket* packet);
    CChatFilter(const CBaseEntity* const _sender, uint64 _filterMask)
    : sender(_sender)
    , filterMask(_filterMask)
    {
    }

    bool isFiltered(const CCharEntity* const entity) const;

private:
    const CBaseEntity* sender;
    uint64             filterMask;
};

#endif
