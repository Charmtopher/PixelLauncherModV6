.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final cx:I

.field da:Landroid/os/Bundle;

.field final de:Landroid/os/Bundle;

.field final dk:Z

.field final du:I

.field final dv:I

.field final dw:Ljava/lang/String;

.field final dx:Z

.field final dy:Z

.field final dz:Z

.field final fA:Ljava/lang/String;

.field fB:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Landroid/support/v4/app/N;

    invoke-direct {v0}, Landroid/support/v4/app/N;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->fA:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->cx:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->dk:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->du:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->dv:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->dw:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->dz:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->dy:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->dx:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->fA:Ljava/lang/String;

    .line 45
    iget v0, p1, Landroid/support/v4/app/Fragment;->cx:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->cx:I

    .line 46
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dk:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->dk:Z

    .line 47
    iget v0, p1, Landroid/support/v4/app/Fragment;->du:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->du:I

    .line 48
    iget v0, p1, Landroid/support/v4/app/Fragment;->dv:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->dv:I

    .line 49
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->dw:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dz:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->dz:Z

    .line 51
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dy:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->dy:Z

    .line 52
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->de:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    .line 53
    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->dx:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentState;->dx:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 116
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->fA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget p2, p0, Landroid/support/v4/app/FragmentState;->cx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->dk:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Landroid/support/v4/app/FragmentState;->du:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Landroid/support/v4/app/FragmentState;->dv:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->dw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->dz:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->dy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->dx:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
