.class final Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;
    .locals 0

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    .line 92
    if-nez p1, :cond_0

    .line 95
    sget-object p1, Landroid/support/v4/view/AbsSavedState;->jQ:Landroid/support/v4/view/AbsSavedState;

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/a;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    new-array p1, p1, [Landroid/support/v4/view/AbsSavedState;

    return-object p1
.end method
