.class public Landroid/support/v4/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final eh:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 293
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment$SavedState;->eh:Landroid/os/Bundle;

    .line 278
    if-eqz p2, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/Fragment$SavedState;->eh:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Landroid/support/v4/app/Fragment$SavedState;->eh:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 290
    iget-object p2, p0, Landroid/support/v4/app/Fragment$SavedState;->eh:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 291
    return-void
.end method
