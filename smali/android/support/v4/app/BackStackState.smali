.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final cA:I

.field final cB:Ljava/lang/CharSequence;

.field final cC:Ljava/util/ArrayList;

.field final cD:Ljava/util/ArrayList;

.field final cE:Z

.field final cM:[I

.field final cs:I

.field final ct:I

.field final cx:I

.field final cy:I

.field final cz:Ljava/lang/CharSequence;

.field final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cs:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ct:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cx:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cy:I

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cz:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cA:I

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cB:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cC:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cD:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->cE:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/c;)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50
    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    .line 52
    iget-boolean v1, p1, Landroid/support/v4/app/c;->cu:Z

    if-eqz v1, :cond_2

    .line 56
    nop

    .line 57
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 58
    iget-object v3, p1, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    .line 59
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cG:I

    aput v6, v4, v2

    .line 60
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v4, v5, 0x1

    iget-object v6, v3, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->cx:I

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    aput v6, v2, v5

    .line 61
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cI:I

    aput v6, v2, v4

    .line 62
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cJ:I

    aput v6, v2, v5

    .line 63
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cK:I

    aput v6, v2, v4

    .line 64
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v4, v5, 0x1

    iget v3, v3, Landroid/support/v4/app/d;->cL:I

    aput v3, v2, v5

    .line 57
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 66
    :cond_1
    iget v0, p1, Landroid/support/v4/app/c;->cs:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cs:I

    .line 67
    iget v0, p1, Landroid/support/v4/app/c;->ct:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ct:I

    .line 68
    iget-object v0, p1, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 69
    iget v0, p1, Landroid/support/v4/app/c;->cx:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cx:I

    .line 70
    iget v0, p1, Landroid/support/v4/app/c;->cy:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cy:I

    .line 71
    iget-object v0, p1, Landroid/support/v4/app/c;->cz:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cz:Ljava/lang/CharSequence;

    .line 72
    iget v0, p1, Landroid/support/v4/app/c;->cA:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->cA:I

    .line 73
    iget-object v0, p1, Landroid/support/v4/app/c;->cB:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cB:Ljava/lang/CharSequence;

    .line 74
    iget-object v0, p1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cC:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p1, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cD:Ljava/util/ArrayList;

    .line 76
    iget-boolean p1, p1, Landroid/support/v4/app/c;->cE:Z

    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->cE:Z

    .line 77
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/v;)Landroid/support/v4/app/c;
    .locals 7

    .line 95
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p1}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/v;)V

    .line 96
    nop

    .line 97
    nop

    .line 98
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 99
    new-instance v3, Landroid/support/v4/app/d;

    invoke-direct {v3}, Landroid/support/v4/app/d;-><init>()V

    .line 100
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Landroid/support/v4/app/d;->cG:I

    .line 101
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Instantiate "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    .line 104
    if-ltz v1, :cond_1

    .line 105
    iget-object v5, p1, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 106
    iput-object v1, v3, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v3, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 110
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroid/support/v4/app/d;->cI:I

    .line 111
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroid/support/v4/app/d;->cJ:I

    .line 112
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroid/support/v4/app/d;->cK:I

    .line 113
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroid/support/v4/app/d;->cL:I

    .line 114
    iget v1, v3, Landroid/support/v4/app/d;->cI:I

    iput v1, v0, Landroid/support/v4/app/c;->co:I

    .line 115
    iget v1, v3, Landroid/support/v4/app/d;->cJ:I

    iput v1, v0, Landroid/support/v4/app/c;->cp:I

    .line 116
    iget v1, v3, Landroid/support/v4/app/d;->cK:I

    iput v1, v0, Landroid/support/v4/app/c;->cq:I

    .line 117
    iget v1, v3, Landroid/support/v4/app/d;->cL:I

    iput v1, v0, Landroid/support/v4/app/c;->cr:I

    .line 118
    invoke-virtual {v0, v3}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/d;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    nop

    .line 98
    move v1, v4

    goto/16 :goto_0

    .line 121
    :cond_2
    iget p1, p0, Landroid/support/v4/app/BackStackState;->cs:I

    iput p1, v0, Landroid/support/v4/app/c;->cs:I

    .line 122
    iget p1, p0, Landroid/support/v4/app/BackStackState;->ct:I

    iput p1, v0, Landroid/support/v4/app/c;->ct:I

    .line 123
    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    .line 124
    iget p1, p0, Landroid/support/v4/app/BackStackState;->cx:I

    iput p1, v0, Landroid/support/v4/app/c;->cx:I

    .line 125
    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v4/app/c;->cu:Z

    .line 126
    iget v1, p0, Landroid/support/v4/app/BackStackState;->cy:I

    iput v1, v0, Landroid/support/v4/app/c;->cy:I

    .line 127
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cz:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/c;->cz:Ljava/lang/CharSequence;

    .line 128
    iget v1, p0, Landroid/support/v4/app/BackStackState;->cA:I

    iput v1, v0, Landroid/support/v4/app/c;->cA:I

    .line 129
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cB:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/c;->cB:Ljava/lang/CharSequence;

    .line 130
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cC:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 131
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cD:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    .line 132
    iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->cE:Z

    iput-boolean v1, v0, Landroid/support/v4/app/c;->cE:Z

    .line 133
    invoke-virtual {v0, p1}, Landroid/support/v4/app/c;->g(I)V

    .line 134
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 144
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->cM:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    iget p2, p0, Landroid/support/v4/app/BackStackState;->cs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget p2, p0, Landroid/support/v4/app/BackStackState;->ct:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget p2, p0, Landroid/support/v4/app/BackStackState;->cx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Landroid/support/v4/app/BackStackState;->cy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->cz:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    iget p2, p0, Landroid/support/v4/app/BackStackState;->cA:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->cB:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->cC:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->cD:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-boolean p2, p0, Landroid/support/v4/app/BackStackState;->cE:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
