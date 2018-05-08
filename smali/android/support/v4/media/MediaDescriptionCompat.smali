.class public final Landroid/support/v4/media/MediaDescriptionCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final gE:Landroid/os/Bundle;

.field private final hY:Ljava/lang/String;

.field private final hZ:Ljava/lang/CharSequence;

.field private final ia:Ljava/lang/CharSequence;

.field private final ib:Ljava/lang/CharSequence;

.field private final ic:Landroid/net/Uri;

.field private final ie:Landroid/net/Uri;

.field private if:Ljava/lang/Object;

.field private final mIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Landroid/support/v4/media/c;

    invoke-direct {v0}, Landroid/support/v4/media/c;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hY:Ljava/lang/String;

    .line 202
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hZ:Ljava/lang/CharSequence;

    .line 203
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ia:Ljava/lang/CharSequence;

    .line 204
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ib:Ljava/lang/CharSequence;

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ic:Landroid/net/Uri;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gE:Landroid/os/Bundle;

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ie:Landroid/net/Uri;

    .line 209
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hY:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hZ:Ljava/lang/CharSequence;

    .line 192
    iput-object p3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ia:Ljava/lang/CharSequence;

    .line 193
    iput-object p4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ib:Ljava/lang/CharSequence;

    .line 194
    iput-object p5, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 195
    iput-object p6, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ic:Landroid/net/Uri;

    .line 196
    iput-object p7, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gE:Landroid/os/Bundle;

    .line 197
    iput-object p8, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ie:Landroid/net/Uri;

    .line 198
    return-void
.end method

.method public static g(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 11

    .line 372
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 373
    new-instance v1, Landroid/support/v4/media/d;

    invoke-direct {v1}, Landroid/support/v4/media/d;-><init>()V

    .line 374
    move-object v2, p0

    check-cast v2, Landroid/media/MediaDescription;

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/d;->hY:Ljava/lang/String;

    .line 375
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/d;->hZ:Ljava/lang/CharSequence;

    .line 376
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/d;->ia:Ljava/lang/CharSequence;

    .line 377
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/d;->ib:Ljava/lang/CharSequence;

    .line 378
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/d;->mIcon:Landroid/graphics/Bitmap;

    .line 379
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/d;->ic:Landroid/net/Uri;

    .line 380
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 381
    if-nez v3, :cond_0

    .line 383
    move-object v4, v0

    goto :goto_0

    .line 381
    :cond_0
    const-string v4, "android.support.v4.media.description.MEDIA_URI"

    .line 382
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 383
    :goto_0
    if-eqz v4, :cond_2

    .line 384
    const-string v5, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 388
    goto :goto_1

    .line 393
    :cond_1
    const-string v0, "android.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 394
    const-string v0, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 397
    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, v1, Landroid/support/v4/media/d;->gE:Landroid/os/Bundle;

    .line 398
    if-eqz v4, :cond_3

    .line 399
    iput-object v4, v1, Landroid/support/v4/media/d;->ie:Landroid/net/Uri;

    goto :goto_2

    .line 400
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_4

    .line 401
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/media/d;->ie:Landroid/net/Uri;

    .line 403
    :cond_4
    :goto_2
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v3, v1, Landroid/support/v4/media/d;->hY:Ljava/lang/String;

    iget-object v4, v1, Landroid/support/v4/media/d;->hZ:Ljava/lang/CharSequence;

    iget-object v5, v1, Landroid/support/v4/media/d;->ia:Ljava/lang/CharSequence;

    iget-object v6, v1, Landroid/support/v4/media/d;->ib:Ljava/lang/CharSequence;

    iget-object v7, v1, Landroid/support/v4/media/d;->mIcon:Landroid/graphics/Bitmap;

    iget-object v8, v1, Landroid/support/v4/media/d;->ic:Landroid/net/Uri;

    iget-object v9, v1, Landroid/support/v4/media/d;->gE:Landroid/os/Bundle;

    iget-object v10, v1, Landroid/support/v4/media/d;->ie:Landroid/net/Uri;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 404
    iput-object p0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->if:Ljava/lang/Object;

    .line 406
    return-object v0

    .line 408
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hZ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ia:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ib:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hZ:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 300
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ia:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 301
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ib:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 302
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 303
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ic:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 304
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gE:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 305
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ie:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->if:Ljava/lang/Object;

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hY:Ljava/lang/String;

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->hZ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ia:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ib:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ic:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gE:Landroid/os/Bundle;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ie:Landroid/net/Uri;

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v2, "android.support.v4.media.description.MEDIA_URI"

    iget-object v4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ie:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->ie:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->if:Ljava/lang/Object;

    nop

    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->if:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 309
    return-void
.end method
