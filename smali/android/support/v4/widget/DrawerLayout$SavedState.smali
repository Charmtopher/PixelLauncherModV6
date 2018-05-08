.class public Landroid/support/v4/widget/DrawerLayout$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mh:I

.field mi:I

.field mj:I

.field mk:I

.field ml:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2126
    new-instance v0, Landroid/support/v4/widget/d;

    invoke-direct {v0}, Landroid/support/v4/widget/d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2104
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2097
    const/4 p2, 0x0

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    .line 2105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    .line 2106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mi:I

    .line 2107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mj:I

    .line 2108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mk:I

    .line 2109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->ml:I

    .line 2110
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2113
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2097
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    .line 2114
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2118
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2119
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mj:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->mk:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->ml:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    return-void
.end method
